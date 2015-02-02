import sys

bad = sys.argv[1]

print "Bad %d\n" % ord(bad)

print "Result: %s\n" % chr(ord(bad)^69)

