#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

int hex_table[256];

void generate_hex_table(void) {
  int i;
  for (i = 0; i <= 256; ++i) {
    hex_table[i] = -1;
  }

  for (i = 0; i <= 10; ++i) {
    hex_table['0' + i] = i;
  }

  for (i = 0; i <= 6; ++i) {
    hex_table['a' + i] = 10 + i;
  }

  for (i = 0; i <= 6; ++i) {
    hex_table['A' + i] = 10 + i;
  }

  // I don't know why, but I was getting errors, and this fixes it.
  hex_table[0] = 0;
}


int read_password(FILE *file, char *password, size_t n) {
      fgets(password, n, file);
        password[strcspn(password, "\n")] = '\0';
}

int main(int argc, char **argv) {
    int i;
  int digits[16] = {0};
  char password[64] = "oldpassword";
  char new_password[64] = "abcdefABCDEF0123456789";

    generate_hex_table();

   for (i = 0; i <= strlen(new_password); ++i) {
        int index = hex_table[(unsigned char) new_password[i]];
        if (index == -1) {
          printf("Invalid character: %c\n", new_password[i]);
          exit(1);
        }  
        digits[index] = 1;
    }

//printf("%s\n", password);

    printf("Hex table\n");
    for(i = 0; i < 256; i++) {
        printf("%d - %d\n", i, hex_table[i]);
    }
}
