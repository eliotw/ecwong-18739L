#include <klee/klee.h>
#include <stdio.h>

int main() {
    char in[sizeof(int32_t)*2+2];
    
    klee_make_symbolic(in, sizeof(in), "in");

    return orig_main(in);
}

int orig_main(char *str_answer) {

    size_t answer_size = sizeof(int32_t)*2+2;

//    printf("Access Code: ");
//    fgets(str_answer, answer_size, stdin);

//    trim(str_answer);
    int32_t* answer = (int32_t*)str_answer;

    if(answer[0] == 0x52657663 && answer[1] == 0x30646521) {
        printf("Access Granted!\n");
    } else {
        printf("You supplied: 0x%x and 0x%x\n", answer[0], answer[1]);
    }

    return 0;
}
