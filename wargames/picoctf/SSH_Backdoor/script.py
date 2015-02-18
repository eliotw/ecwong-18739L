wd = "iminyourmachinestealinyourflags"
result = ""
for ch in wd:
    result += chr(ord(ch)^42)

print result
