CC = gcc
LIBS = -lev -lpthread
OPTFLAGS = -Wextra -g
CFLAGS = -Wall $(OPTFLAGS) $(LIBS)  -L/usr/local/lib

OBJS = test

all: $(OBJS)

test: test.o zero_server.o zero_thread.o zero_queue.o
	$(CC) -o test $(CFLAGS) test.o zero_server.o zero_thread.o zero_queue.o

test.o: test.c zero_server.h zero_common.h
	$(CC) -c test.c 

zero_server.o: zero_server.c zero_thread.c zero_server.h zero_common.h zero_thread.h
	$(CC) -c zero_server.c

zero_thread.o: zero_thread.c zero_queue.c zero_thread.h zero_queue.h zero_common.h
	$(CC) -c zero_thread.c

zero_queue.o: zero_queue.c zero_queue.h zero_common.h
	$(CC) -c zero_queue.c

.PHONY : clean
clean:
	-rm test *.o
