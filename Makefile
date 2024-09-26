# Définition du compilateur
CC = gcc
# Flags de compilation
CFLAGS = -Wall -Wextra -std=c99

# Cible par défaut
all: StringInverser

# Règle pour compiler StringInverser
StringInverser: StringInverser.c
	$(CC) $(CFLAGS) -o StringInverser StringInverser.c

# Règle pour nettoyer les fichiers générés
clean:
	rm -f StringInverser
	[ ! -d StringInverser ] || rm -rf StringInverser