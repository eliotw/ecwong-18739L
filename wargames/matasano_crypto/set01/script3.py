arg = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"

cMap = {}

def insert(k):
    if(k in cMap):
        cMap[k]+=1
    else:
        cMap[k] = 1

for i in range(len(arg)):
    insert(arg[i:i+2])
    i+=1

print cMap
