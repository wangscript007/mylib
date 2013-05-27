VPATH := ./src

OBJECTS := Debug.o MemoryManager.o Mint.o MrswLock.o Nonreentrant.o Statistics.o TonyLowDebug.o

LIBNAME := libmy.a

CC := g++
CFLAGS := -Wcast-qual
AR := ar
CFLAGS := -I./include

mylib: $(OBJECTS)
	$(AR) rcs $(LIBNAME) $(OBJECTS)

%.o:%.cpp
	$(CC) -c $(CFLAGS) $< -o $@

.PHONY:clean

clean:
	rm -rf *.o