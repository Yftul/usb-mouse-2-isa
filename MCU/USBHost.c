#include "CH559.h"
#include "USBHost.h"
#include "util.h"
#include <string.h>

#define MAX_HID_DEVICES 8
#define RECEIVE_BUFFER_LEN 512

typedef const uint8_t __code *PUINT8C;

__code const uint8_t GetDeviceDescriptorRequest[] = {USB_REQ_TYP_IN, USB_GET_DESCRIPTOR, 0, USB_DESCR_TYP_DEVICE, 0, 0, sizeof(USB_DEV_DESCR), 0};
__code const uint8_t GetConfigurationDescriptorRequest[] = {USB_REQ_TYP_IN, USB_GET_DESCRIPTOR, 0, USB_DESCR_TYP_CONFIG, 0, 0, sizeof(USB_DEV_DESCR), 0};
__code const uint8_t GetInterfaceDescriptorRequest[] = {USB_REQ_TYP_IN | USB_REQ_RECIP_INTERF, USB_GET_DESCRIPTOR, 0, USB_DESCR_TYP_INTERF, 0, 0, sizeof(USB_ITF_DESCR), 0};
__code const uint8_t SetUSBAddressRequest[] = {USB_REQ_TYP_OUT, USB_SET_ADDRESS, USB_DEVICE_ADDR, 0, 0, 0, 0, 0};
__code const uint8_t GetDeviceStringRequest[] = {USB_REQ_TYP_IN, USB_GET_DESCRIPTOR, 2, 3, 9, 4, 2, 4}; // todo change language
__code const uint8_t SetupSetUsbConfig[] = {USB_REQ_TYP_OUT, USB_SET_CONFIGURATION, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

__code const uint8_t SetHIDIdleRequest[] = {USB_REQ_TYP_CLASS | USB_REQ_RECIP_INTERF, HID_SET_IDLE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
__code const uint8_t GetHIDReport[] = {USB_REQ_TYP_IN | USB_REQ_RECIP_INTERF, USB_GET_DESCRIPTOR, 0x00, USB_DESCR_TYP_REPORT, 0 /*interface*/, 0x00, 0xff, 0x00};

__at(0x0000) volatile uint8_t __xdata RxBuffer[MAX_PACKET_SIZE];
__at(0x0100) volatile uint8_t __xdata TxBuffer[MAX_PACKET_SIZE];

__xdata volatile uint8_t endpoint0Size; // todo rly global?

__xdata volatile uint8_t receiveDataBuffer[RECEIVE_BUFFER_LEN];

typedef enum {
    REPORT_USAGE_PAGE = 0x04,
    REPORT_USAGE = 0x08,
    REPORT_LOCAL_MINIMUM = 0x14,
    REPORT_LOCAL_MAXIMUM = 0x24,
    REPORT_PHYSICAL_MINIMUM = 0x34,
    REPORT_PHYSICAL_MAXIMUM = 0x44,
    REPORT_USAGE_MINIMUM = 0x18,
    REPORT_USAGE_MAXIMUM = 0x28,

    REPORT_UNIT = 0x64,
    REPORT_INPUT = 0x80,
    REPORT_OUTPUT = 0x90,
    REPORT_FEATURE = 0xB0,

    REPORT_REPORT_SIZE = 0x74,
    REPORT_REPORT_ID = 0x84,
    REPORT_REPORT_COUNT = 0x94,

    REPORT_COLLECTION = 0xA0,
    REPORT_COLLECTION_END = 0xC0,

    REPORT_USAGE_UNKNOWN = 0x00,
    REPORT_USAGE_POINTER = 0x01,
    REPORT_USAGE_MOUSE = 0x02,
    REPORT_USAGE_RESERVED = 0x03,
    REPORT_USAGE_JOYSTICK = 0x04,
    REPORT_USAGE_GAMEPAD = 0x05,
    REPORT_USAGE_KEYBOARD = 0x06,
    REPORT_USAGE_KEYPAD = 0x07,
    REPORT_USAGE_MULTI_AXIS = 0x08,
    REPORT_USAGE_SYSTEM = 0x09,

    REPORT_USAGE_X = 0x30,
    REPORT_USAGE_Y = 0x31,
    REPORT_USAGE_Z = 0x32,
    REPORT_USAGE_Rx = 0x33,
    REPORT_USAGE_Ry = 0x34,
    REPORT_USAGE_Rz = 0x35,
    REPORT_USAGE_WHEEL = 0x38,

    REPORT_USAGE_PAGE_GENERIC = 0x01,
    REPORT_USAGE_PAGE_KEYBOARD = 0x07,
    REPORT_USAGE_PAGE_LEDS = 0x08,
    REPORT_USAGE_PAGE_BUTTON = 0x09,
    REPORT_USAGE_PAGE_VENDOR = 0xff00,
} reports_t;

typedef struct {
    uint8_t report_id;
    uint16_t buttons_bit_offset;
    uint8_t buttons_bit_size;
    uint16_t x_bit_offset;
    uint8_t x_bit_size;
    uint16_t y_bit_offset;
    uint8_t y_bit_size;
    uint16_t wheel_bit_offset;
    uint8_t wheel_bit_size;
    uint8_t report_length_bits;
} MouseReportMap;

struct {
    uint8_t connected;
    uint8_t rootHub;
    uint8_t interface;
    uint8_t endPoint;
    uint32_t type;
    MouseReportMap mouse_map;
} __xdata HIDdevice[MAX_HID_DEVICES];

struct {
    uint32_t idVendorL;
    uint32_t idVendorH;
    uint32_t idProductL;
    uint32_t idProductH;
} __xdata VendorProductID[2];

extern void flash_led(void);

struct _RootHubDevice {
    uint8_t status;
    uint8_t address;
    uint8_t speed;
} __xdata rootHubDevice[ROOT_HUB_COUNT];

static int32_t extract_field(uint8_t *report, uint16_t bit_offset, uint8_t bit_size, uint8_t is_signed)
{
    __xdata uint32_t value = 0;
    __xdata uint32_t sign;
    __xdata uint16_t byte_pos = bit_offset >> 3;
    __xdata uint8_t bit_pos = bit_offset % 8;
    __xdata uint8_t bits_left = bit_size;
    __xdata uint8_t bits_in_byte;
    __xdata uint8_t bits_to_read;
    __xdata uint32_t mask;

    while (bits_left > 0) {
        bits_in_byte = 8 - bit_pos;
        bits_to_read = (bits_left < bits_in_byte) ? bits_left : bits_in_byte;
        mask = (1UL << bits_to_read) - 1;
        value |= (((uint32_t )report[byte_pos] >> bit_pos) & mask) << (bit_size - bits_left);
        bits_left -= bits_to_read;
        bit_pos = 0;
        byte_pos++;
    }

    if (is_signed && bit_size > 0 && bit_size < 32) {
        sign = 1UL << (bit_size - 1);
        if (value & sign) {
            value |= ~((1UL << bit_size) - 1);
        }
    }

    return (int32_t)value;
}

static void disableRootHubPort(uint8_t index)
{
    rootHubDevice[index].status = ROOT_DEVICE_DISCONNECT;
    rootHubDevice[index].address = 0;
    if (index)
        UHUB1_CTRL = 0;
    else
        UHUB0_CTRL = 0;
}

void initUSB_Host()
{
    IE_USB = 0;
    USB_CTRL = bUC_HOST_MODE;
    USB_DEV_AD = 0x00;
    UH_EP_MOD = bUH_EP_TX_EN | bUH_EP_RX_EN;
    UH_RX_DMA = 0x0000;
    UH_TX_DMA = 0x0001;
    UH_RX_CTRL = 0x00;
    UH_TX_CTRL = 0x00;
    USB_CTRL = bUC_HOST_MODE | bUC_INT_BUSY | bUC_DMA_EN;
    UH_SETUP = bUH_SOF_EN;
    USB_INT_FG = 0xFF;

    disableRootHubPort(0);
    disableRootHubPort(1);
    USB_INT_EN = bUIE_TRANSFER | bUIE_DETECT;
}

static void setHostUsbAddr(uint8_t addr)
{
    USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | addr & 0x7F;
}

static void setUsbSpeed(uint8_t fullSpeed)
{
    if (fullSpeed) {
        USB_CTRL &= ~bUC_LOW_SPEED;
        UH_SETUP &= ~bUH_PRE_PID_EN;
    } else {
        USB_CTRL |= bUC_LOW_SPEED;
    }
}

static void resetRootHubPort(uint8_t rootHubIndex)
{
    endpoint0Size = DEFAULT_ENDP0_SIZE; // todo what's that?
    setHostUsbAddr(0);
    setUsbSpeed(1);

    if (rootHubIndex == 0) {
        UHUB0_CTRL = UHUB0_CTRL & ~bUH_LOW_SPEED | bUH_BUS_RESET;
        delay(15);
        UHUB0_CTRL = UHUB0_CTRL & ~bUH_BUS_RESET;
    } else if (rootHubIndex == 1) {
        UHUB1_CTRL = UHUB1_CTRL & ~bUH_LOW_SPEED | bUH_BUS_RESET;
        delay(15);
        UHUB1_CTRL = UHUB1_CTRL & ~bUH_BUS_RESET;
    }

    delayUs(250);
    UIF_DETECT = 0; // todo test if redundant
}

static uint8_t enableRootHubPort(uint8_t rootHubIndex)
{
    if (rootHubDevice[rootHubIndex].status < 1) {
        rootHubDevice[rootHubIndex].status = 1;
    }

    if (rootHubIndex == 0) {
        if (USB_HUB_ST & bUHS_H0_ATTACH) {
            if ((UHUB0_CTRL & bUH_PORT_EN) == 0x00) {
                if (USB_HUB_ST & bUHS_DM_LEVEL) {
                    rootHubDevice[rootHubIndex].speed = 0;
                    UHUB0_CTRL |= bUH_LOW_SPEED;
                } else {
                    rootHubDevice[rootHubIndex].speed = 1;
                }
            }
            UHUB0_CTRL |= bUH_PORT_EN;
            return ERR_SUCCESS;
        }
    } else if (rootHubIndex == 1) {
        if (USB_HUB_ST & bUHS_H1_ATTACH) {
            if ((UHUB1_CTRL & bUH_PORT_EN) == 0x00) {
                if (USB_HUB_ST & bUHS_HM_LEVEL) {
                    rootHubDevice[rootHubIndex].speed = 0;
                    UHUB1_CTRL |= bUH_LOW_SPEED;
                } else {
                    rootHubDevice[rootHubIndex].speed = 1;
                }
            }
            UHUB1_CTRL |= bUH_PORT_EN;
            return ERR_SUCCESS;
        }
    }
    return ERR_USB_DISCON;
}

static void selectHubPort(uint8_t rootHubIndex, uint8_t HubPortIndex)
{
    uint8_t temp = HubPortIndex;
    setHostUsbAddr(rootHubDevice[rootHubIndex].address); // todo ever != 0
    setUsbSpeed(rootHubDevice[rootHubIndex].speed); // isn't that set before?
}

static uint8_t hostTransfer(uint8_t endp_pid, uint8_t tog, uint16_t timeout)
{
    __xdata uint16_t retries = 0;
    __xdata uint8_t r;
    __xdata uint16_t i;
    UH_RX_CTRL = tog;
    UH_TX_CTRL = tog;

    do {
        UH_EP_PID = endp_pid;
        UIF_TRANSFER = 0;
        for (i = 200; i != 0 && UIF_TRANSFER == 0; i--) {
            delayUs(1);
        }
        UH_EP_PID = 0x00;

        if (UIF_TRANSFER == 0) {
            return ERR_USB_UNKNOWN;
        }

        if (UIF_TRANSFER) {
            if (U_TOG_OK) {
                return ERR_SUCCESS;
            }

            r = USB_INT_ST & MASK_UIS_H_RES;
            if (r == USB_PID_STALL) {
                return r | ERR_USB_TRANSFER;
            }

            if (r == USB_PID_NAK) {
                if (timeout == 0) {
                    return r | ERR_USB_TRANSFER;
                }
                if (timeout < 0xFFFF) {
                    timeout--;
                }
                retries--;
            } else {
                switch (endp_pid >> 4) { // todo no return.. compare to other guy
                    case USB_PID_SETUP:
                    case USB_PID_OUT:
                        if (U_TOG_OK) {
                            return ERR_SUCCESS;
                        }
                        if (r == USB_PID_ACK) {
                            return ERR_SUCCESS;
                        }
                        if (r == USB_PID_STALL || r == USB_PID_NAK) {
                            return r | ERR_USB_TRANSFER;
                        }
                        if (r) {
                            return r | ERR_USB_TRANSFER;
                        }
                        break;

                    case USB_PID_IN:
                        if (U_TOG_OK) {
                            return ERR_SUCCESS;
                        }
                        if (tog ? r == USB_PID_DATA1 : r == USB_PID_DATA0) {
                            return ERR_SUCCESS;
                        }
                        if (r == USB_PID_STALL || r == USB_PID_NAK) {
                            return r | ERR_USB_TRANSFER;
                        }
                        if (r == USB_PID_DATA0 || r == USB_PID_DATA1) {
                            // (r == USB_PID_DATA0 && r == USB_PID_DATA1)
                        } else if (r) {
                            return r | ERR_USB_TRANSFER;
                        }
                        break;

                    default:
                        return ERR_USB_UNKNOWN;
                        break;
                }
            }
        } else {
            USB_INT_FG = 0xFF;
        }
        delayUs(15);
    } while (++retries < 200);

    return ERR_USB_TRANSFER;
}

static uint8_t hostCtrlTransfer(uint8_t __xdata *DataBuf, uint16_t *RetLen, uint16_t maxLength)
{
    static uint8_t SetPort = 0;
    __xdata uint16_t RemLen;
    __xdata uint8_t res;
    __xdata uint8_t RxLen;
    __xdata uint8_t i;
    uint8_t __xdata *pBuf;
    uint16_t *pLen;
    (void)maxLength;

    DEBUG_OUT("hostCtrlTransfer\n");
    PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
    pBuf = DataBuf;
    pLen = RetLen;
    delayUs(200);

    if (pLen) {
        *pLen = 0;
    }

    UH_TX_LEN = sizeof(USB_SETUP_REQ);
    res = hostTransfer((uint8_t)(USB_PID_SETUP << 4), 0, 10000);
    if (res != ERR_SUCCESS) {
        return res;
    }

    UH_RX_CTRL = UH_TX_CTRL = bUH_R_TOG | bUH_R_AUTO_TOG | bUH_T_TOG | bUH_T_AUTO_TOG;
    UH_TX_LEN = 0x01;
    RemLen = (pSetupReq->wLengthH << 8) | (pSetupReq->wLengthL);

    if (RemLen && pBuf) {
        if (pSetupReq->bRequestType & USB_REQ_TYP_IN) {
            DEBUG_OUT("Remaining bytes to read %d\n", RemLen);
            while (RemLen) {
                delayUs(300);
                res = hostTransfer((uint8_t)(USB_PID_IN << 4), UH_RX_CTRL, 10000);
                if (res != ERR_SUCCESS) {
                    return res;
                }

                RxLen = USB_RX_LEN < RemLen ? USB_RX_LEN : RemLen;
                RemLen -= RxLen;
                if (pLen) {
                    *pLen += RxLen;
                }

                for (i = 0; i < RxLen; i++) {
                    pBuf[i] = RxBuffer[i];
                }
                pBuf += RxLen;

                DEBUG_OUT("Received %i bytes\n", (uint16_t)USB_RX_LEN);
                if (USB_RX_LEN == 0 || (USB_RX_LEN < endpoint0Size)) {
                    break;
                }
            }
            UH_TX_LEN = 0x00;
        } else {
            DEBUG_OUT("Remaining bytes to write %i", RemLen);
            // todo rework this TxBuffer overwritten
            while (RemLen) {
                delayUs(200);
                UH_TX_LEN = RemLen >= endpoint0Size ? endpoint0Size : RemLen;
                // memcpy(TxBuffer, pBuf, UH_TX_LEN);
                pBuf += UH_TX_LEN;

                if (pBuf[1] == 0x09) {
                    SetPort = SetPort ? 0 : 1;
                    *pBuf = SetPort;
                    DEBUG_OUT("SET_PORT  %02X  %02X ", *pBuf, SetPort);
                }

                DEBUG_OUT("Sending %i bytes\n", (uint16_t)UH_TX_LEN);
                res = hostTransfer(USB_PID_OUT << 4, UH_TX_CTRL, 10000);
                if (res != ERR_SUCCESS) {
                    return res;
                }

                RemLen -= UH_TX_LEN;
                if (pLen) {
                    *pLen += UH_TX_LEN;
                }
            }
        }
    }

    delayUs(200);
    res = hostTransfer((UH_TX_LEN ? USB_PID_IN << 4 : USB_PID_OUT << 4), bUH_R_TOG | bUH_T_TOG, 10000);
    if (res != ERR_SUCCESS) {
        return res;
    }

    if (UH_TX_LEN == 0) {
        return ERR_SUCCESS;
    }

    if (USB_RX_LEN == 0) {
        return ERR_SUCCESS;
    }

    return ERR_USB_BUF_OVER;
}

static void fillTxBuffer(PUINT8C data, uint8_t len)
{
    // memcpy не работает с __code на этой архитектуре
    for(uint8_t i = 0; i < len; ++i) {
        TxBuffer[i] = data[i];
    }
}

static uint8_t getDeviceDescriptor()
{
    uint8_t res;
    uint16_t len;
    endpoint0Size = DEFAULT_ENDP0_SIZE; // TODO again?
    DEBUG_OUT("getDeviceDescriptor\n");
    fillTxBuffer(GetDeviceDescriptorRequest, sizeof(GetDeviceDescriptorRequest));
    res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
    if (res != ERR_SUCCESS) {
        return res;
    }

    DEBUG_OUT("Device descriptor request sent successfully\n");
    endpoint0Size = ((PXUSB_DEV_DESCR)receiveDataBuffer)->bMaxPacketSize0;
    if (len < ((PUSB_SETUP_REQ)GetDeviceDescriptorRequest)->wLengthL) {
        DEBUG_OUT("Received packet is smaller than expected\n");
        return ERR_USB_BUF_OVER;
    }
    return res;
}

static uint8_t setUsbAddress(uint8_t addr)
{
    __xdata uint8_t res;
    PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
    fillTxBuffer(SetUSBAddressRequest, sizeof(SetUSBAddressRequest));
    pSetupReq->wValueL = addr;
    res = hostCtrlTransfer(0, 0, 0);
    if (res != ERR_SUCCESS) {
        return res;
    }

    DEBUG_OUT("SetAddress: %i\n", addr);
    setHostUsbAddr(addr);
    delay(100);
    return res;
}

static uint8_t setUsbConfig(uint8_t cfg)
{
    PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
    fillTxBuffer(SetupSetUsbConfig, sizeof(SetupSetUsbConfig));
    pSetupReq->wValueL = cfg;
    return hostCtrlTransfer(0, 0, 0);
}

static uint8_t getDeviceString()
{
    fillTxBuffer(GetDeviceStringRequest, sizeof(GetDeviceStringRequest));
    return hostCtrlTransfer(receiveDataBuffer, 0, RECEIVE_BUFFER_LEN);
}

static char convertStringDescriptor(uint8_t __xdata *usbBuffer, uint8_t __xdata *strBuffer, uint16_t bufferLength, uint8_t index)
{
    // supports using source as target buffer
    __xdata uint8_t i = 0;
    __xdata uint8_t len = (usbBuffer[0] - 2) >> 1;
    (void)index;

    if (usbBuffer[1] != 3) {
        return 0; // check if device string
    }

    for (; (i < len) && (i < bufferLength - 1); i++) {
        if (usbBuffer[2 + 1 + (i << 1)]) {
            strBuffer[i] = '?';
        } else {
            strBuffer[i] = usbBuffer[2 + (i << 1)];
        }
    }
    strBuffer[i] = 0;

    return 1;
}

static void DEBUG_OUT_USB_BUFFER(uint8_t __xdata *usbBuffer)
{
    __xdata int i;
    for (i = 0; i < usbBuffer[0]; i++) {
        DEBUG_OUT("0x%02X ", (uint16_t)(usbBuffer[i]));
    }
    DEBUG_OUT("\n");
}

static uint8_t getConfigurationDescriptor()
{
    __xdata uint8_t res;
    __xdata uint16_t len, total;
    fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));

    res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
    if (res != ERR_SUCCESS) {
        return res;
    }

    // todo didnt send reqest completely
    if (len < ((PUSB_SETUP_REQ)GetConfigurationDescriptorRequest)->wLengthL) {
        return ERR_USB_BUF_OVER;
    }

    // todo fix 16bits
    total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
    fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
    ((PUSB_SETUP_REQ)TxBuffer)->wLengthL = (uint8_t)(total & 255);
    ((PUSB_SETUP_REQ)TxBuffer)->wLengthH = (uint8_t)(total >> 8);
    res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
    if (res != ERR_SUCCESS) {
        return res;
    }

    return ERR_SUCCESS;
}

#if 0 // Не используется
static uint8_t getInterfaceDescriptor(uint8_t index)
{
    __xdata uint8_t temp = index;
    __xdata uint8_t res;
    __xdata uint16_t len;
    fillTxBuffer(GetInterfaceDescriptorRequest, sizeof(GetInterfaceDescriptorRequest));
    res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
    return res;
}
#endif

void resetHubDevices(uint8_t hubindex)
{
    __xdata uint8_t hiddevice;
    VendorProductID[hubindex].idVendorL = 0;
    VendorProductID[hubindex].idVendorH = 0;
    VendorProductID[hubindex].idProductL = 0;
    VendorProductID[hubindex].idProductH = 0;

    for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
        if (HIDdevice[hiddevice].rootHub == hubindex) {
            HIDdevice[hiddevice].connected = 0;
            HIDdevice[hiddevice].rootHub = 0;
            HIDdevice[hiddevice].interface = 0;
            HIDdevice[hiddevice].endPoint = 0;
            HIDdevice[hiddevice].type = 0;
        }
    }
}

void pollHIDdevice(uint32_t * buttons, int32_t * dx, int32_t * dy, int32_t * dwheel)
{
    __xdata uint8_t res;
    __xdata uint8_t hiddevice;
    __xdata uint8_t len;
    __xdata uint8_t *report;
    __xdata MouseReportMap *map;

    for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
        if (HIDdevice[hiddevice].connected && HIDdevice[hiddevice].type == REPORT_USAGE_MOUSE) {
            selectHubPort(HIDdevice[hiddevice].rootHub, 0);
            res = hostTransfer(USB_PID_IN << 4 | HIDdevice[hiddevice].endPoint & 0x7F,
                             HIDdevice[hiddevice].endPoint & 0x80 ? bUH_R_TOG | bUH_T_TOG : 0, 0);
            if (res == ERR_SUCCESS) {
                HIDdevice[hiddevice].endPoint ^= 0x80;
                len = USB_RX_LEN;
                if (len) {
                    map = &HIDdevice[hiddevice].mouse_map;
                    report = RxBuffer;
                    if (map->report_id != 0) {
                        if (report[0] != map->report_id) {
                            DEBUG_OUT("Wrong report ID: expected %d, got %d\n", map->report_id, report[0]);
                            return;
                        }
                        report++;
                    }

                    if (len - (map->report_id?1:0) < (map->report_length_bits + 7) >> 3) {
                        DEBUG_OUT("Report too short: got %d bytes, expected at least %d\n",
                                    len - (map->report_id?1:0), (map->report_length_bits + 7) >> 3);
                        return;
                    }


                    if (map->buttons_bit_size > 0) {
                        *buttons = (uint32_t)extract_field(report, map->buttons_bit_offset,
                                            map->buttons_bit_size, 0);
                    }

                    if (map->x_bit_size > 0) {
                        *dx = extract_field(report, map->x_bit_offset,
                                        map->x_bit_size, 1);
                    }

                    if (map->y_bit_size > 0) {
                        *dy = extract_field(report, map->y_bit_offset,
                                        map->y_bit_size, 1);
                    }

                    if (map->wheel_bit_size > 0) {
                        *dwheel = extract_field(report, map->wheel_bit_offset,
                                            map->wheel_bit_size, 1);
                    }

                    DEBUG_OUT("Mouse id:%d: butt=0x%lX, dx=%ld, dy=%ld, dwheel=%ld\n",
                            map->report_id, *buttons, *dx, *dy, *dwheel);
                }
            }
        }
    }
}

static void parseHIDDeviceReport(uint8_t __xdata *report, uint16_t length, uint8_t CurrentDevice)
{
    __xdata uint16_t i = 0;
    __xdata uint8_t j;
    __xdata uint8_t level = 0;
    __xdata uint8_t isUsageSet = 0;
    __xdata uint8_t tag;
    __xdata uint8_t tag_size;
    __xdata uint32_t data;

    __xdata uint32_t usage_page = 0;
    __xdata uint32_t usageX = 0;
    __xdata uint32_t usageY = 0;
    __xdata uint32_t usageW = 0;
    __xdata int32_t logical_min = 0;
    __xdata int32_t logical_max = 0;
    __xdata uint8_t report_size = 0;
    __xdata uint8_t report_count = 0;
    __xdata uint16_t current_bit_offset = 0;
    __xdata uint8_t used_reports;

    MouseReportMap *map = &HIDdevice[CurrentDevice].mouse_map;
    memset(map, 0, sizeof(MouseReportMap));

    DEBUG_OUT("Parsing HID descriptor, length: %d\n", length);

    while (i < length) {
        tag = report[i] & 0b11111100;
        tag_size = report[i] & 0b00000011;
        data = 0;

        if (tag_size == 3) {
            tag_size = 4;
        }

        for (j = 0; j < tag_size; j++) {
            if (i + 1 + j < length) {
                data |= ((uint32_t)(report[i + 1 + j])) << (j << 3);
            }
        }

        for (j = 0; j < level - (tag == REPORT_COLLECTION_END ? 1 : 0); j++) {
            DEBUG_OUT("    ");
        }

        switch (tag) {
            case REPORT_USAGE_PAGE:
                usage_page = data;
                DEBUG_OUT("Usage page ");
                switch (usage_page) {
                    case REPORT_USAGE_PAGE_LEDS:
                        DEBUG_OUT("LEDs");
                        break;
                    case REPORT_USAGE_PAGE_KEYBOARD:
                        DEBUG_OUT("Keyboard/Keypad");
                        break;
                    case REPORT_USAGE_PAGE_BUTTON:
                        DEBUG_OUT("Button");
                        break;
                    case REPORT_USAGE_PAGE_GENERIC:
                        DEBUG_OUT("generic desktop controls");
                        break;
                    case REPORT_USAGE_PAGE_VENDOR:
                        DEBUG_OUT("vendor defined 0x%04lx", data);
                        break;
                    default:
                        DEBUG_OUT("unknown 0x%02lx", data);
                }
                DEBUG_OUT("\n");
                break;

            case REPORT_USAGE:
                if (!isUsageSet) {
                    if (data == REPORT_USAGE_MOUSE) {
                        flash_led(); // Подключена мышь.
                    }
                    HIDdevice[CurrentDevice].type = data;
                    isUsageSet = 1;
                }
                DEBUG_OUT("Usage ");
                switch (data) {
                    case REPORT_USAGE_UNKNOWN:
                        DEBUG_OUT("Unknown");
                        break;
                    case REPORT_USAGE_POINTER:
                        DEBUG_OUT("Pointer");
                        break;
                    case REPORT_USAGE_MOUSE:
                        DEBUG_OUT("Mouse");
                        break;
                    case REPORT_USAGE_RESERVED:
                        DEBUG_OUT("Reserved");
                        break;
                    case REPORT_USAGE_JOYSTICK:
                        DEBUG_OUT("Joystick");
                        break;
                    case REPORT_USAGE_GAMEPAD:
                        DEBUG_OUT("Gamepad");
                        break;
                    case REPORT_USAGE_KEYBOARD:
                        DEBUG_OUT("Keyboard");
                        break;
                    case REPORT_USAGE_KEYPAD:
                        DEBUG_OUT("Keypad");
                        break;
                    case REPORT_USAGE_MULTI_AXIS:
                        DEBUG_OUT("Multi-Axis controller");
                        break;
                    case REPORT_USAGE_SYSTEM:
                        DEBUG_OUT("Tablet system controls");
                        break;
                    case REPORT_USAGE_X:
                        DEBUG_OUT("X");
                        usageX = data;
                        break;
                    case REPORT_USAGE_Y:
                        DEBUG_OUT("Y");
                        usageY = data;
                        break;
                    case REPORT_USAGE_Z:
                        DEBUG_OUT("Z");
                        break;
                    case REPORT_USAGE_WHEEL:
                        DEBUG_OUT("Wheel");
                        usageW = data;
                        break;
                    default:
                        DEBUG_OUT("unknown 0x%02lx", data);
                }
                DEBUG_OUT("\n");
                break;

            case REPORT_LOCAL_MINIMUM:
                logical_min = (int32_t)data;
                if (logical_min & (1UL << (tag_size * 8 - 1))) {
                    logical_min |= ~((1UL << (tag_size * 8)) - 1);
                }
                DEBUG_OUT("Logical min: %ld\n", logical_min);
                break;
            case REPORT_LOCAL_MAXIMUM:
                logical_max = (int32_t)data;
                DEBUG_OUT("Logical max: %ld\n", logical_max);
                break;
            case REPORT_PHYSICAL_MINIMUM:
                DEBUG_OUT("Physical min %lu\n", data);
                break;
            case REPORT_PHYSICAL_MAXIMUM:
                DEBUG_OUT("Physical max %lu\n", data);
                break;
            case REPORT_USAGE_MINIMUM:
                DEBUG_OUT("Physical min %lu\n", data);
                break;
            case REPORT_USAGE_MAXIMUM:
                DEBUG_OUT("Physical max %lu\n", data);
                break;
            case REPORT_COLLECTION:
                DEBUG_OUT("Collection start %lu\n", data);
                level++;
                break;
            case REPORT_COLLECTION_END:
                DEBUG_OUT("Collection end %lu\n", data);
                level--;
                break;
            case REPORT_UNIT:
                DEBUG_OUT("Unit 0x%02lx\n", data);
                break;
            case REPORT_INPUT:
                DEBUG_OUT("Input: 0x%02lx\n", data);
                used_reports = 0;
                if (HIDdevice[CurrentDevice].type == REPORT_USAGE_MOUSE) {
                    DEBUG_OUT("Processing mouse input at bit offset: %d\n", current_bit_offset);

                    if (usage_page == 0x09) { // Button Page
                        if (map->buttons_bit_size == 0) {
                            map->buttons_bit_offset = current_bit_offset;
                            map->buttons_bit_size = report_size * report_count;
                            DEBUG_OUT("Buttons: offset=%d, size=%d\n",
                                     map->buttons_bit_offset, map->buttons_bit_size);
                        }
                    }
                    else if (usage_page == 0x01) { // Generic Desktop Page
                        if (usageX == 0x30) { // X
                            usageX = 0;
                            map->x_bit_offset = current_bit_offset;
                            map->x_bit_size = report_size;
                            map->report_length_bits = current_bit_offset + report_size;
                            current_bit_offset += report_size;
                            used_reports++;
                            DEBUG_OUT("X: offset=%d, size=%d\n",
                                     map->x_bit_offset, map->x_bit_size);
                        }
                        if (usageY == 0x31) { // Y
                            usageY = 0;
                            map->y_bit_offset = current_bit_offset;
                            map->y_bit_size = report_size;
                            map->report_length_bits = current_bit_offset + report_size;
                            current_bit_offset += report_size;
                            used_reports++;
                            DEBUG_OUT("Y: offset=%d, size=%d\n",
                                     map->y_bit_offset, map->y_bit_size);
                        }
                        if (usageW == 0x38) { // Wheel
                            usageW = 0;
                            map->wheel_bit_offset = current_bit_offset;
                            map->wheel_bit_size = report_size;
                            map->report_length_bits = current_bit_offset + report_size;
                            current_bit_offset += report_size;
                            DEBUG_OUT("Wheel: offset=%d, size=%d\n",
                                     map->wheel_bit_offset, map->wheel_bit_size);
                        }
                    }
                }
                if (used_reports > report_count) {
                    used_reports = report_count;
                    DEBUG_OUT("Error: HID report parsing error. used reports: %d, all reports: %d\n",
                                    used_reports, report_count);
                }
                current_bit_offset += report_size * (report_count - used_reports);
                DEBUG_OUT("New bit offset: %d\n", current_bit_offset);
                break;
            case REPORT_OUTPUT:
                DEBUG_OUT("Output 0x%02lx\n", data);
                break;
            case REPORT_FEATURE:
                DEBUG_OUT("Feature 0x%02lx\n", data);
                break;
            case REPORT_REPORT_SIZE:
                report_size = data;
                DEBUG_OUT("Report size %lu\n", data);
                break;
            case REPORT_REPORT_ID:
                if (!map->report_id) {
                    map->report_id = data;
                    DEBUG_OUT("Report ID(updated): %lu\n", data);
                } else {
                    DEBUG_OUT("Report ID: %lu\n", data);
                }
                break;
            case REPORT_REPORT_COUNT:
                report_count = data;
                DEBUG_OUT("Report count: %lu\n", data);
                break;
            default:
                DEBUG_OUT("  Unknown tag: 0x%02X\n", tag);
        }

        i += tag_size + 1;
    }

    if (map->report_length_bits == 0) {
        map->report_length_bits = current_bit_offset;
    }

    DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
             map->report_id,
             map->buttons_bit_offset, map->buttons_bit_size,
             map->x_bit_offset, map->x_bit_size,
             map->y_bit_offset, map->y_bit_size,
             map->wheel_bit_offset, map->wheel_bit_size,
             map->report_length_bits);
}

static uint8_t getHIDDeviceReport(uint8_t CurrentDevice)
{
    uint8_t res;
    uint16_t len, i, reportLen = RECEIVE_BUFFER_LEN;
    DEBUG_OUT("Requesting report from interface %i\n", HIDdevice[CurrentDevice].interface);

    fillTxBuffer(SetHIDIdleRequest, sizeof(SetHIDIdleRequest));
    ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevice].interface;
    res = hostCtrlTransfer(receiveDataBuffer, &len, 0);

    fillTxBuffer(GetHIDReport, sizeof(GetHIDReport));
    ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevice].interface;
    ((PXUSB_SETUP_REQ)TxBuffer)->wLengthL = (uint8_t)(reportLen & 255);
    ((PXUSB_SETUP_REQ)TxBuffer)->wLengthH = (uint8_t)(reportLen >> 8);
    res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
    if (res != ERR_SUCCESS) {
        return res;
    }

    for (i = 0; i < len; i++) {
        DEBUG_OUT("0x%02X ", receiveDataBuffer[i]);
    }
    DEBUG_OUT("\n");

    parseHIDDeviceReport(receiveDataBuffer, len, CurrentDevice);
    return ERR_SUCCESS;
}

static void readInterface(uint8_t rootHubIndex, PXUSB_ITF_DESCR interface)
{
    (void)rootHubIndex;
    (void)interface;
    DEBUG_OUT("Interface %d\n", interface->bInterfaceNumber);
    DEBUG_OUT("  Class %d\n", interface->bInterfaceClass);
    DEBUG_OUT("  Sub Class %d\n", interface->bInterfaceSubClass);
    DEBUG_OUT("  Interface Protocol %d\n", interface->bInterfaceProtocol);
}

static void readHIDInterface(PXUSB_ITF_DESCR interface, PXUSB_HID_DESCR descriptor)
{
    (void)interface;
    (void)descriptor;
    DEBUG_OUT("HID at Interface %d\n", interface->bInterfaceNumber);
    DEBUG_OUT("  USB %d.%d%d\n", (descriptor->bcdHIDH & 15), (descriptor->bcdHIDL >> 4), (descriptor->bcdHIDL & 15));
    DEBUG_OUT("  Country code 0x%02X\n", descriptor->bCountryCode);
    DEBUG_OUT("  TypeX 0x%02X\n", descriptor->bDescriptorTypeX);
}

static uint8_t initializeRootHubConnection(uint8_t rootHubIndex)
{
    __xdata uint8_t retry;
    __xdata uint8_t i;
    __xdata uint8_t res = ERR_SUCCESS;
    __xdata uint8_t cfg;
    __xdata uint8_t dv_cls;
    __xdata uint8_t addr;
    __xdata uint8_t HIDDevice = 0;

    for (retry = 0; retry < 10; retry++) { // todo test fewer retries
        delay(100);
#if 0 // test lower delay
        delay(100); // todo test lower delay
#endif
        resetHubDevices(rootHubIndex);
        resetRootHubPort(rootHubIndex);

        for (i = 0; i < 100; i++) { // todo test fewer retries
            delay(1);
            if (enableRootHubPort(rootHubIndex) == ERR_SUCCESS) {
                break;
            }
        }

        if (i == 100) {
            disableRootHubPort(rootHubIndex);
            DEBUG_OUT("Failed to enable root hub port %i\n", rootHubIndex);
            continue;
        }

        selectHubPort(rootHubIndex, 0);
        DEBUG_OUT("root hub port %i enabled\n", rootHubIndex);
        res = getDeviceDescriptor();

        if (res == ERR_SUCCESS) {
            dv_cls = ((PXUSB_DEV_DESCR)receiveDataBuffer)->bDeviceClass;
            DEBUG_OUT("Device class %i\n", dv_cls);
            DEBUG_OUT("Max packet size %i\n", ((PXUSB_DEV_DESCR)receiveDataBuffer)->bMaxPacketSize0);
            VendorProductID[rootHubIndex].idVendorL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorL;
            VendorProductID[rootHubIndex].idVendorH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorH;
            VendorProductID[rootHubIndex].idProductL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductL;
            VendorProductID[rootHubIndex].idProductH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductH;
            DEBUG_OUT_USB_BUFFER(receiveDataBuffer);

            addr = rootHubIndex + ((PUSB_SETUP_REQ)SetUSBAddressRequest)->wValueL; // todo wValue always 2.. does another id work?
            res = setUsbAddress(addr);
            if (res == ERR_SUCCESS) {
                rootHubDevice[rootHubIndex].address = addr;
                res = getDeviceString();
                {
                    DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
                    if (convertStringDescriptor(receiveDataBuffer, receiveDataBuffer, RECEIVE_BUFFER_LEN, rootHubIndex)) {
                        DEBUG_OUT("Device String: %s\n", receiveDataBuffer);
                    }
                    res = getConfigurationDescriptor();
                    if (res == ERR_SUCCESS) {
                        uint16_t i, total;
                        uint8_t __xdata temp[512];
                        PXUSB_ITF_DESCR currentInterface = 0;
                        int interfaces;

                        for (i = 0; i < receiveDataBuffer[2] + (receiveDataBuffer[3] << 8); i++) {
                            DEBUG_OUT("0x%02X ", (uint16_t)(receiveDataBuffer[i]));
                        }
                        DEBUG_OUT("\n");

                        cfg = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bConfigurationValue;
                        DEBUG_OUT("Configuration value: %d\n", cfg);

                        interfaces = ((PXUSB_CFG_DESCR_LONG)receiveDataBuffer)->cfg_descr.bNumInterfaces;
                        DEBUG_OUT("Interface count: %d\n", interfaces);

                        res = setUsbConfig(cfg);
                        // parse descriptors
                        total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
                        for (i = 0; i < total; i++) {
                            temp[i] = receiveDataBuffer[i];
                        }

                        i = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bLength;
                        while (i < total) {
                            uint8_t __xdata *desc = &(temp[i]);
                            switch (desc[1]) {
                                case USB_DESCR_TYP_INTERF:
                                    DEBUG_OUT("Interface descriptor found\n");
                                    currentInterface = ((PXUSB_ITF_DESCR)desc);
                                    readInterface(rootHubIndex, currentInterface);
                                    break;
                                case USB_DESCR_TYP_ENDP:
                                    DEBUG_OUT("Endpoint descriptor found\n");
                                    DEBUG_OUT_USB_BUFFER(desc);
                                    if (currentInterface->bInterfaceClass == USB_DEV_CLASS_HID) {
                                        PXUSB_ENDP_DESCR d = (PXUSB_ENDP_DESCR)desc;
                                        if (d->bEndpointAddress & 0x80) {
                                            uint8_t hiddevice;
                                            for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
                                                if (HIDdevice[hiddevice].connected == 0) {
                                                    break;
                                                }
                                            }
                                            DEBUG_OUT("Connected device at position: %i\n", hiddevice);
                                            HIDdevice[hiddevice].endPoint = d->bEndpointAddress;
                                            HIDdevice[hiddevice].connected = 1;
                                            HIDdevice[hiddevice].interface = currentInterface->bInterfaceNumber;
                                            HIDdevice[hiddevice].rootHub = rootHubIndex;
                                            DEBUG_OUT("Got endpoint for the HIDdevice 0x%02x\n", HIDdevice[hiddevice].endPoint);
                                            getHIDDeviceReport(hiddevice);
                                        }
                                    }
                                    break;
                                case USB_DESCR_TYP_HID:
                                    DEBUG_OUT("HID descriptor found\n");
                                    readHIDInterface(currentInterface, (PXUSB_HID_DESCR)desc);
                                    break;
                                case USB_DESCR_TYP_CS_INTF:
                                    DEBUG_OUT("Class specific header descriptor found\n");
                                    DEBUG_OUT_USB_BUFFER(desc);
                                    break;
                                case USB_DESCR_TYP_CS_ENDP:
                                    DEBUG_OUT("Class specific endpoint descriptor found\n");
                                    DEBUG_OUT_USB_BUFFER(desc);
                                    break;
                                default:
                                    DEBUG_OUT("Unexpected descriptor type: %02X\n", desc[1]);
                                    DEBUG_OUT_USB_BUFFER(desc);
                            }
                            i += desc[0];
                        }
                        return ERR_SUCCESS;
                    }
                }
            }
        }
        DEBUG_OUT("Error = %02X\n", res);
        rootHubDevice[rootHubIndex].status = ROOT_DEVICE_FAILED;
        setUsbSpeed(1); // TODO define speeds
    }
    return res;
}

uint8_t checkRootHubConnections()
{
    __xdata uint8_t res = ERR_SUCCESS;

    if (UIF_DETECT) {
        UIF_DETECT = 0;
        if (USB_HUB_ST & bUHS_H0_ATTACH) {
            if (rootHubDevice[0].status == ROOT_DEVICE_DISCONNECT || (UHUB0_CTRL & bUH_PORT_EN) == 0x00) {
                disableRootHubPort(0); // todo really need to reset register?
                rootHubDevice[0].status = ROOT_DEVICE_CONNECTED;
                DEBUG_OUT("Device at root hub %i connected\n", 0);
                flash_led(); // Подключено устройство.
                res = initializeRootHubConnection(0);
            }
        } else if (rootHubDevice[0].status >= ROOT_DEVICE_CONNECTED) {
            resetHubDevices(0);
            disableRootHubPort(0);
            DEBUG_OUT("Device at root hub %i disconnected\n", 0);
            flash_led(); // Отключено устройство.
            res = ERR_USB_DISCON;
        }

        if (USB_HUB_ST & bUHS_H1_ATTACH) {
            if (rootHubDevice[1].status == ROOT_DEVICE_DISCONNECT || (UHUB1_CTRL & bUH_PORT_EN) == 0x00) {
                disableRootHubPort(1); // todo really need to reset register?
                rootHubDevice[1].status = ROOT_DEVICE_CONNECTED;
                DEBUG_OUT("Device at root hub %i connected\n", 1);
                flash_led(); // Подключено устройство.
                res = initializeRootHubConnection(1);
            }
        } else if (rootHubDevice[1].status >= ROOT_DEVICE_CONNECTED) {
            resetHubDevices(1);
            disableRootHubPort(1);
            DEBUG_OUT("Device at root hub %i disconnected\n", 1);
            flash_led(); // Отключено устройство.
            res = ERR_USB_DISCON;
        }
    }
    return res;
}
