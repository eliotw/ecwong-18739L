//a little fun brought to you by bla

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <signal.h>
#include <setjmp.h>
#include <klee/klee.h>

void catcher(int a)
{
        setresuid(geteuid(),geteuid(),geteuid());
	printf("WIN!\n");
    klee_assert(0);
        system("/bin/sh");
        exit(0);
}

#define SIZE 32

int main() {

    int a;
    int b;

    char in1[sizeof(a)];
    char in2[sizeof(b)];

    char *argv[3];

    klee_make_symbolic(&a, sizeof(a), "in1");
    klee_make_symbolic(&b, sizeof(b), "in2");

   sprintf(in1, "%d", a);
  sprintf(in2, "%d", b);

    argv[0] = in1;
    argv[1] = in1;
    argv[2] = in2;
    printf("test");

    return orig_main(3, argv);
}

int orig_main(int argc, char **argv)
{
	puts("source code is available in level02.c\n");

        if (argc != 3 || !atoi(argv[2]))
                return 1;
        printf("Got to here\n");
        signal(SIGFPE, catcher);
        return abs(atoi(argv[1])) / atoi(argv[2]);
}

