TARGET = ascii85

CC = gcc
CFLAGS = -Wall -Wextra
RM = rm -f

.PHONY: all $(TARGET) clean

all: $(TARGET)

$(TARGET): ascii85.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	$(RM) $(TARGET) $(TARGET).exe
