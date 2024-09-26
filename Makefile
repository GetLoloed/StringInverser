CC = gcc
CFLAGS = -Wall -Wextra -std=c99

all: StringInverser

StringInverser: StringInverser.c
	$(CC) $(CFLAGS) -o StringInverser StringInverser.c

clean:
	rm -f StringInverser