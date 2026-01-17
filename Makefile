CC=clang++
CFLAGS=-O3 -Wall
TARGET=bin/ao_engine
SRC=core/engine.cpp

all:
	mkdir -p bin
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)
	chmod +x scripts/optimizer.sh

clean:
	rm -rf bin/*
