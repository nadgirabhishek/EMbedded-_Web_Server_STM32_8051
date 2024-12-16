# Default file name of the hex file (can be overridden by passing BIN on the command line)
#BIN ?= lab3trial  # Default to 'main.hex' if no other file is specified

# Serial port and batchisp settings
DEVICE = at89c51rc2
HARDWARE = RS232
PORT = COM16
BAUDRATE = 57600

# Paths
HEX = Ethernet_Webserver_ESD_Project.hex  # The hex file based on the passed or default BIN variable

# Set default options for erasing and blankcheck (optional)
ERASE ?= no

# Define the batchisp commands based on the ERASE option
ifeq ($(ERASE), yes)
  ERASE_CMD = erase blankcheck
else
  ERASE_CMD = # Empty if erase is not needed
endif

# Flash the .hex file to the chip using batchisp
flash: $(HEX)
	batchisp -device $(DEVICE) -hardware $(HARDWARE) -port $(PORT) \
	-baudrate $(BAUDRATE) -operation $(ERASE_CMD) \
	memory flash loadbuffer $(HEX) program verify start reset 1

# Open a serial terminal with PuTTY
serial:
	putty -serial $(PORT) -sercfg $(BAUDRATE),8,n,1,N

# Clean up (if needed, though there might be nothing to clean in this case)
clean:
	rm -f $(HEX)

.PHONY: flash clean serial
