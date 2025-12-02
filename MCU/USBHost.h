#ifndef __USBHOST_H__
#define __USBHOST_H__

#define ROOT_HUB_COUNT                 2

typedef enum {
    ERR_SUCCESS         = 0x00,
    ERR_USB_CONNECT     = 0x15,
    ERR_USB_DISCON      = 0x16,
    ERR_USB_BUF_OVER    = 0x17,
    ERR_USB_DISK_ERR    = 0x1F,
    ERR_USB_TRANSFER    = 0x20,
    ERR_USB_UNSUPPORT   = 0xFB,
    ERR_USB_UNKNOWN     = 0xFE,
} error_t;

typedef enum {
    ROOT_DEVICE_DISCONNECT  = 0,
    ROOT_DEVICE_CONNECTED   = 1,
    ROOT_DEVICE_FAILED      = 2,
    ROOT_DEVICE_SUCCESS     = 3,
} root_dev_stat_t;

void initUSB_Host();
uint8_t checkRootHubConnections();
void resetHubDevices(uint8_t hubindex);
void pollHIDdevice(uint32_t * buttons, int32_t * dx, int32_t * dy, int32_t * dwheel);

#endif