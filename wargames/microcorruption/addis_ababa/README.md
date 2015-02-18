# Addis Ababa (50 pts)

Looking at the code, it is fairly obvious that this will be a format string attack because there are printf statements throughout the program.

In particular, we find that after the username and password are validated, it is then outputted to the screen.

```
447a:  0b12           push	r11
447c:  b012 c845      call	#0x45c8 <printf>
```

Here we can see r11 contains the pointer to the input string and it is being passed directly as the format string into printf.

Later on, we will use this vulnerability to bypass the password validation.

Here we can see they are checking the memory at the stack pointer. If it is set to zero, the entry will be rejected. Otherwise, the door will unlock if it is non-zero.

`448a:  8193 0000      tst	0x0(sp)`

Looking at our stack, we can see for string pointer that was pushed onto the stack (0x3c0a) and following it is the stack pointer which we need to change to a non-zero number.

```
3c00:   0000 0a3c 8044 0a3c 0000 6125 7825 6e00   ...<.D.<..a%x%n.
```

The format string used in this attack was:

`083c33632578256e`

This is equivalent to the address of the password validation byte, %x and %n.

``