//bla, based on work by beach

#include <stdio.h>
#include <string.h>
#include <klee/klee.h>

void good()
{
        puts("Win.");
        klee_assert(0);
//        execl("/bin/sh", "sh", NULL);
}
void bad()
{
        printf("I'm so sorry, you're at %p and you want to be at %p\n", bad, good);
}

int main() {
    char *argv[2];

    char in[80];
    char dummy[] = "D";

    klee_make_symbolic(in, sizeof(in), "in");

    argv[0] = dummy;
    argv[1] = in;

    return orig_main(2, argv, NULL);
}

int orig_main(int argc, char **argv, char **envp)
{
        void (*functionpointer)(void) = bad;
        char buffer[50];

        if(argc != 2 || strlen(argv[1]) < 4)
                return 0;

        memcpy(buffer, argv[1], strlen(argv[1]));
        memset(buffer, 0, strlen(argv[1]) - 4);

        printf("This is exciting we're going to %p\n", functionpointer);
        functionpointer();

        return 0;
}

