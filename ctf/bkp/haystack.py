class switch(object):
    def __init__(self, value):
        self.value = value
        self.fall = False

    def __iter__(self):
        """Return the match method once, then stop"""
        yield self.match
        raise StopIteration
    
    def match(self, *args):
        """Indicate whether or not to enter a case suite"""
        if self.fall or not args:
            return True
        elif self.value in args: # changed for v1.5, see below
            self.fall = True
            return True
        else:
            return False

def translate(v):
    for case in switch(v):
        if case((0,1)):
            return "A"
            break
        if case((0,2)):
            return "B"
            break
        if case((0,3)):
            return "C"
            break
        if case((0,4)):
            return "D"
            break
        if case((0,5)):
            return "E"
            break
        if case((0,6)):
            return "F"
            break
        if case((0,7)):
            return "G"
            break
        if case((0,8)):
            return "H"
            break
        if case((0,9)):
            return "I"
            break

        if case((1,1)):
            return "J"
            break
        if case((1,2)):
            return "K"
            break
        if case((1,3)):
            return "L"
            break
        if case((1,4)):
            return "M"
            break
        if case((1,5)):
            return "N"
            break
        if case((1,6)):
            return "O"
            break
        if case((1,7)):
            return "P"
            break
        if case((1,8)):
            return "Q"
            break
        if case((1,9)):
            return "R"
            break

        if case((2,2)):
            return "S"
            break
        if case((2,3)):
            return "T"
            break
        if case((2,4)):
            return "U"
            break
        if case((2,5)):
            return "V"
            break
        if case((2,6)):
            return "W"
            break
        if case((2,7)):
            return "X"
            break
        if case((2,8)):
            return "Y"
            break
        if case((2,9)):
            return "Z"
            break

        if case(): # default, could also just omit condition or 'if True'
            return " "
            # No need to break here, it'll stop anyway


#l = [(0,9),(0,4),(0,5),(1,5),(2,3),(0,9),(0,6),(0,9),(0,3),(0,1),(2,3),(0,9),(1,6),(1,5),
#        (-1,-1),(0,4),(0,9),(3,5),(0,9),(2,2),(0,9),(1,6),(1,5),(1,3),(-1,-1),(1,7),(1,9),(1,6),
#        (0,7),(2,9),(1,1)]
l = [(0,4),(0,1),(2,3),(0,1),(-1,-1),(0,4),(0,9),(2,0),(0,9),(2,2),(0,9)]
output = ""
for c in l:
    output += translate(c)

print output
