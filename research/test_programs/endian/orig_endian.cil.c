#include <klee/klee.h>/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is false */

#line 212 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
typedef unsigned long size_t;
#line 131 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off_t;
#line 132 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off64_t;
#line 44 "/usr/include/stdio.h"
struct _IO_FILE;
#line 44
struct _IO_FILE;
#line 48 "/usr/include/stdio.h"
typedef struct _IO_FILE FILE;
#line 144 "/usr/include/libio.h"
struct _IO_FILE;
#line 154 "/usr/include/libio.h"
typedef void _IO_lock_t;
#line 160 "/usr/include/libio.h"
struct _IO_marker {
   struct _IO_marker *_next ;
   struct _IO_FILE *_sbuf ;
   int _pos ;
};
#line 245 "/usr/include/libio.h"
struct _IO_FILE {
   int _flags ;
   char *_IO_read_ptr ;
   char *_IO_read_end ;
   char *_IO_read_base ;
   char *_IO_write_base ;
   char *_IO_write_ptr ;
   char *_IO_write_end ;
   char *_IO_buf_base ;
   char *_IO_buf_end ;
   char *_IO_save_base ;
   char *_IO_backup_base ;
   char *_IO_save_end ;
   struct _IO_marker *_markers ;
   struct _IO_FILE *_chain ;
   int _fileno ;
   int _flags2 ;
   __off_t _old_offset ;
   unsigned short _cur_column ;
   signed char _vtable_offset ;
   char _shortbuf[1] ;
   _IO_lock_t *_lock ;
   __off64_t _offset ;
   void *__pad1 ;
   void *__pad2 ;
   void *__pad3 ;
   void *__pad4 ;
   size_t __pad5 ;
   int _mode ;
   char _unused2[(15UL * sizeof(int ) - 4UL * sizeof(void *)) - sizeof(size_t )] ;
};
#line 38 "/usr/include/stdint.h"
typedef int int32_t;
#line 168 "/usr/include/stdio.h"
extern struct _IO_FILE *stdin ;
#line 362
extern int printf(char const   * __restrict  __format  , ...) ;
#line 622
extern char *fgets(char * __restrict  __s , int __n , FILE * __restrict  __stream ) ;
#line 468 "/usr/include/stdlib.h"
extern  __attribute__((__nothrow__)) void *( __attribute__((__leaf__)) calloc)(size_t __nmemb , size_t __size )  __attribute__((__malloc__)) ;
#line 483
extern  __attribute__((__nothrow__)) void ( __attribute__((__leaf__)) free)(void *__ptr ) ;
#line 17 "orig_endian.c"
extern int ( /* missing proto */  klee_assert)() ;
#line 5 "orig_endian.c"
int main(int argc , char **argv ) 
{ 
  size_t answer_size ;
  char *str_answer ;
  char *tmp ;
  int32_t *answer ;

  {
#line 7
  answer_size = sizeof(int32_t ) * 2UL + 2UL;
#line 8
  tmp = (char *)calloc(1, answer_size);
#line 8
  str_answer = tmp;
#line 10
  printf("Access Code: ");
#line 11
  char * sym_data = malloc(answer_size);
#line 11
  klee_make_symbolic(sym_data, answer_size, "sym_data");
#line 11
  memcpy(str_answer, sym_data, answer_size);
#line 13
  answer = (int32_t *)str_answer;
#line 15
  if (*(answer + 0) == 1382381155) {
#line 15
    if (*(answer + 1) == 811885857) {
#line 16
      printf("Access Granted!\n");
#line 17
      klee_assert(0);
    } else {
#line 19
      printf("You supplied: 0x%x and 0x%x\n", *(answer + 0), *(answer + 1));
    }
  } else {
#line 19
    printf("You supplied: 0x%x and 0x%x\n", *(answer + 0), *(answer + 1));
  }
#line 22
  free(str_answer);
#line 23
  return (0);
}
}
