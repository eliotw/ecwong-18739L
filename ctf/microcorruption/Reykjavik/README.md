# Reykjavik

We know that in order to unlock the door, a interrupt has to be triggered with the argument 7F. Looking at the disassemble code, we can see this line which does exactly that

```
3012 7f00      push	#0x7f
b012 6424      call	#0x2464
```

Looking at memory address 0x2464 we have the code for calling an interrupt.

```asm
1e41 0200      mov	0x2(sp), r14
0212           push	sr
0f4e           mov	r14, r15
8f10           swpb	r15
024f           mov	r15, sr
32d0 0080      bis	#0x8000, sr
b012 1000      call	#0x10
3241           pop	sr
3041           ret
```

If we go back to where the interrupt is called, slightly before is a statement

```
b490 dc51 dcff cmp	#0x51dc, -0x24(r4)
0520           jnz	$+0xc
```

`-0x24(r4)` points to the beginning of the password buffer. So in order to unlock the door, the first two bytes need to be `0xdc51`

So the password is `0xdc51`
