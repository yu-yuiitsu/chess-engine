CC = clang
CFLAGS = -Wall -Wextra -Werror -Iinclude

SRC = src/main.c
TARGET = build/chess

all:
	mkdir -p build
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -rf build
