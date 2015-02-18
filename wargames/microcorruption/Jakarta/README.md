# Jakarta

The username takes in 0xff bytes

Then when accepting the password it will subtract the length of the username from 0x1f.

However, it is important that when they are checking the length of the username input they are checking it against 0x21. So if we pass in a length of 0x20, when it is subtracted from 0x1f we will get 0xFFFF. Then after the length is ANDed it gives us a password buffer of 0x1ff. 

Return address is located at 0x4016, so we will need to overwrite this.

```
45c8:  3e40 1f00      mov	#0x1f, r14
45cc:  0e8b           sub	r11, r14
45ce:  3ef0 ff01      and	#0x1ff, r14
```

print "41"*32

After overwriting it I assumed I was finished, however I ran into another problem where they check the password and username input combined which caused my exploit to fail. However, in the cmp instruction they are only checking the first byte. So if I make my input greater than or equal to 0x100 it will pass.

print "4141"*2 + "1c46" + "41"*224