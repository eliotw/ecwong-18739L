#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

int main(int argc, char **argv) {

    size_t answer_size = sizeof(int32_t)*2+2;
    char* str_answer = calloc(1, answer_size);

    printf("Access Code: ");
    fgets(str_answer, answer_size, stdin);

    int32_t* answer = (int32_t*)str_answer;

    if(answer[0] == 0x52657663 && answer[1] == 0x30646521) {
        printf("Access Granted!\n");
        klee_assert(0);
    } else {
        printf("You supplied: 0x%x and 0x%x\n", answer[0], answer[1]);
    }

    free(str_answer);
    return 0;
}
