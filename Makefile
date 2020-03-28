CC = gcc
CFLAGS = -std=gnu11 -g
TARGET = bitcopy

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) $< -o $@

format:
	clang-format -i *.c

clean:
	$(RM) $(TARGET)
