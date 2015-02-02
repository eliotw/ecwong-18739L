import sys
import base64
import binascii

if(len(sys.argv) != 2):
    print "Usage: script1.py string"
    sys.exit(0)

print base64.b64encode(binascii.unhexlify(sys.argv[1]))
