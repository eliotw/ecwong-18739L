import hashlib, string, itertools

charlist = list(string.ascii_uppercase)

authList = list(itertools.permutations(charlist,9))

s = hashlib.sha1();

auth = "AAAA"
cs = "b%3A1%3B"

print auth

print cs

#s.update("
