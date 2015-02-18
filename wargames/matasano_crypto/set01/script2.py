import binascii, base64

arg1 = "1c0111001f010100061a024b53535009181c" 
arg2 = "686974207468652062756c6c277320657965"

result = ""

for i in range(len(arg1)):
    result += hex(int(arg1[i], 16) ^ int(arg2[i], 16))[2:]

print result
