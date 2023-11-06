CC=gcc
CFLAGS=-Og -m64 -S

all: lea_decode.s

lea_decode.s: lea_decode.c
	${CC} ${CFLAGS} lea_decode.c

compare:
	diff -b -B -I '.file*' -I '.ident*' lea_decode.s lea_decode_correct.s

clean:
	rm lea_decode.s
