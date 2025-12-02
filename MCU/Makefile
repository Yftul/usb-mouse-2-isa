PROJECT_NAME := CH559USB
BUILD_DIR    := build
SRC_DIR      := .
SRC          := main.c util.c USBHost.c
OBJ          := $(patsubst %.c,$(BUILD_DIR)/%.rel,$(SRC))

XRAM_SIZE    := 0x0800
XRAM_LOC     := 0x0600
CODE_SIZE    := 0xEFFF
DFREQ_SYS    := 48000000

SDCC       := sdcc
PACKIHX    := packihx
HEX2BIN    := hex2bin
OBJCOPY    := objcopy
FLASHER    := chflasher.exe

SDCC_FLAGS := -V -mmcs51 --model-large \
              --xram-size $(XRAM_SIZE) --xram-loc $(XRAM_LOC) --code-size $(CODE_SIZE) \
              -I/ -DFREQ_SYS=$(DFREQ_SYS)

all: $(BUILD_DIR)/$(PROJECT_NAME).bin

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/%.rel: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(SDCC) -c $(SDCC_FLAGS) -o $@ $<

$(BUILD_DIR)/$(PROJECT_NAME).ihx: $(OBJ) | $(BUILD_DIR)
	$(SDCC) $(SDCC_FLAGS) -o $@ $(OBJ)

$(BUILD_DIR)/$(PROJECT_NAME).hex: $(BUILD_DIR)/$(PROJECT_NAME).ihx
	$(PACKIHX) $< > $@

$(BUILD_DIR)/$(PROJECT_NAME).bin: $(BUILD_DIR)/$(PROJECT_NAME).hex
	$(OBJCOPY) -I ihex -O binary $< $@
	@cp $(BUILD_DIR)/$(PROJECT_NAME).hex ../BIN/
	@cp $(BUILD_DIR)/$(PROJECT_NAME).bin ../BIN/
	@echo "Build complete: $@"

flash: $(BUILD_DIR)/$(PROJECT_NAME).bin
	$(FLASHER) $<

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean flash
