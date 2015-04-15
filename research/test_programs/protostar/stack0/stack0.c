#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

int main(int argc, char **argv)
{
  volatile int modified;
  char buffer[64];

  modified = 0;
  //gets(buffer);
  void* sym_data = malloc(68);
  klee_make_symbolic(sym_data, 68, "sym_data");
  memcpy(buffer, sym_data, 68);
  free(sym_data);

  if(modified != 0) {
      printf("you have changed the 'modified' variable\n");
  } else {
      printf("Try again?\n");
  }
}

