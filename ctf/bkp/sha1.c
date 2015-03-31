#include <stdio.h>
#include <string.h>
#include <openssl/sha.h>

// gcc sha1.c -o puzzle -O3 -Wall -lcrypto

int main(int argc, char const *argv[])
{
    unsigned int i;
    unsigned char buf[128];
    unsigned char res[128];
    unsigned int n = strlen(argv[1]);
    unsigned int *p = (void *)&buf[n];

    strcpy((char *)buf, argv[1]);
    buf[n] = 'A';
    n++;

    for (i = 0; i < 0xfffffff0; i++) {
        if ((i & 0xffffff) == 0) {
            fprintf(stderr, "%08x\n", i);
            fflush(stderr);
        }
        *p = i;
        SHA1(buf, n + 4, res);
        if (res[19] != 0xff)
            continue;
        if (res[18] != 0xff)
            continue;
        // puzzle for crypto250
        /*if (res[17] != 0xff)
            continue;
        if ((res[16] & 3) != 3)
            continue;*/
        for(i = 0; i < 20; i++) {
            printf("%02x", res[i]);
        }
        printf("\n");

        printf ("GOOD: ");
        for (i = 0; i < n + 4; i++) {
            printf("\\x%02x", buf[i]);
        }
        return 0;
    }
    return 1;
}
