CC = gcc
FLAGS = -g -Wall -std=c99
EXECS = cwhitespace

all: $(EXECS)

cwhitespace: cwhitespace.c commands_stack.c commands_math.c commands_flow.c \
commands_heap.c commands_io.c
	$(CC) $(FLAGS) -o $@ $? $(LIBS)

clean:
	rm -rf $(EXECS) *.o

