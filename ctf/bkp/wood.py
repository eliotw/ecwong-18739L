import base64
import hashlib
import string
import sys

m = "\x74\x31\x4e\x69\x4c\x6d\x68\x56\x37\x61\x44\x6c\xbb\xf8\x00\x00\x11"
ha = hashlib.sha1()
ha.update(m)
print ":".join("{:02x}".format(ord(c)) for c in ha.digest())
sys.exit(1)

for a in range(256):
    print a
    for b in range(256):
        for c in range(256):
            for d in range(256):
                m1 = m+chr(a)+chr(b)+chr(c)+chr(d)
                ha = hashlib.sha1()
                ha.update(m1)
                if ha.digest().endswith('\FF\FF'):
                    print m1


print "Done"
