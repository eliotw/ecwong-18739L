#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

void give_shell(){
    gid_t gid = getegid();
    setresgid(gid, gid, gid);
    system("/bin/sh -i");
}

void vuln(char *input){
    char buf[16];
    int secret = 0;
    //strcpy(buf, input);
    void* sym_data = malloc(20);
    klee_make_symbolic(sym_data, 20, "sym_data");
    memcpy(buf, sym_data, 20);
    free(sym_data);

    if (secret == 0xc0deface){
        klee_assert(0);
        give_shell();
    }else{
        printf("The secret is %x\n", secret);
    }
}

int main(int argc, char **argv){
    if (argc > 1)
        vuln(argv[1]);
    return 0;
}
