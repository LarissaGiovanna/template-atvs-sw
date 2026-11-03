CC = gcc
CFLAGS = -I. -pthread -Wall -Wextra

program: dependency.o main.o
	$(CC) $(CFLAGS) -o $@ $^

dependency.o: dependency.c dependency.h
	$(CC) $(CFLAGS) -Werror -c $< -o $@

main.o: main.c dependency.h
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -f program *.o
