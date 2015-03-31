import base64
import hashlib
import string

m = "gDlZv/kH5MnV"
ha = hashlib.sha1()

for a in string.printable:
    for b in string.printable:
        for c in string.printable:
            for d in string.printable:

            
                m1 = m+a+b+c+d
                ha = hashlib.sha1()
                ha.update(m1)
                if ha.digest().endswith('\FF\FF'):
                    print m1

print "Done"
