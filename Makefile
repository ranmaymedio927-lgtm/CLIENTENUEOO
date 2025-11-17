CC = gcc
CFLAGS = -Wall -g -Iinclude
LDFLAGS = 

SOURCES = src/main.c src/ftp_client.c src/connectsock.c src/connectTCP.c src/errexit.c
OBJECTS = $(SOURCES:.c=.o)
TARGET = clienteFTP

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all clean
