from PIL import Image

for num in range(1,33):
    im = Image.open("L" + str(num) + ".png")
    #im = Image.open("LRef.png")

    rgb_im = im.convert('RGB')

    def check(x):
        return x == (20,20,20)

    cList = [(-1,-1,-1) for i in range(80)]
    output = ""
    for r in range(12):
        for c in range(80):
            if check(rgb_im.getpixel((17+(c*7), 25+(r*20)))):
                o = cList[c]
                if(o[0] == -1):
                    # Check if first digit is set
                    cList[c] = (r,-1,-1)
                elif(o[1] == -1):
                    cList[c] = (o[0], r, -1)
                else:
                    cList[c] = (o[0], o[1], r)
                output += "X"
            else:
                output += " "
        output += "\n"

    output = ""
    #print cList
    def tran(c):
        if(c[0] == -1 and c[1] == -1):
            return " "
        if(c[0] == 2 and c[1] == 3):
            return "/"

        if(c[2] == 10):
            if(c[0] == 0):
                if(c[1] == 4):
                    return "["
                if(c[1] == 5):
                    return "."
                if(c[1] == 6):
                    return "<"
                if(c[1] == 7):
                    return "("
                if(c[1] == 8):
                    return "+"
                if(c[1] == 9):
                    return "^"
            if(c[0] == 1):
                if(c[1] == 4):
                    return "!"
                if(c[1] == 5):
                    return "$"
                if(c[1] == 6):
                    return "*"
                if(c[1] == 7):
                    return ")"
                if(c[1] == 8):
                    return ";"
                if(c[1] == 9):
                    return "\\"
            if(c[0] == 2):
                if(c[1] == 4):
                    return "]"
                if(c[1] == 5):
                    return ","
                if(c[1] == 6):
                    return "%"
                if(c[1] == 7):
                    return "_"
                if(c[1] == 8):
                    return ">"
                if(c[1] == 9):
                    return "?"


        if(c[0] == 4 and c[1] == 10):
            return ":"
        if(c[0] == 5 and c[1] == 10):
            return "#"
        if(c[0] == 6 and c[1] == 10):
            return "@"
        if(c[0] == 7 and c[1] == 10):
            return "'"
        if(c[0] == 8 and c[1] == 10):
            return "="
        if(c[0] == 9 and c[1] == 10):
            return "\""

        
        if(c[1] == -1):
            if(c[0] == 0):
                return "&"
            if(c[0] == 1):
                return "-"
            if(c[0] >= 2):
                return chr(ord('0')+(c[0]-2))
        if(c[0] == 0 and c[1] != -1):
            return chr(ord('A')+(c[1]-3))
        if(c[0] == 1 and c[1] != -1):
            return chr(ord('J')+(c[1]-3))
        if(c[0] == 2 and c[1] >= 4):
            return chr(ord('S')+(c[1]-4))
        return " "
    for c in cList:
        output += tran(c)

    print output
