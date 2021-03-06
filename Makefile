CC      ?= gcc
CFLAGS   = -Wall -Wextra -Wformat-security -O3 -fstack-protector-all
LDFLAGS  = -lnetfilter_queue
PROGRAM  = brdgrd
SOURCE   = brdgrd.c

all: brdgrd.c
	$(CC) $(SOURCE) $(CFLAGS) $(LDFLAGS) -o $(PROGRAM)
	@echo "\nDon't forget to set your iptables rules.\n"

clean:
	@rm -rf $(PROGRAM)
