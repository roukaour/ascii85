TARGET = ascii85

CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -pedantic -O3
RM = rm -f

.PHONY: all $(TARGET) clean

all: $(TARGET)

$(TARGET): ascii85.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	$(RM) $(TARGET) $(TARGET).exe
