import sys

def table(elems):
    sys.stdout.write("     ")
    for a in elems:
        sys.stdout.write("%2d " % a)
    sys.stdout.write("\n")
    sys.stdout.write("-----")
    for a in elems:
        sys.stdout.write("---")
    sys.stdout.write("\n")
    for a in elems:
        sys.stdout.write("%2d | " % a)
        for b in elems:
            ab = (a*b) % 15
            sys.stdout.write("%2d " % ab)
        sys.stdout.write("\n")
        sys.stdout.flush()

def r(v):
    "Rotate dihedral group once"
    return [v[-1]] + v[:-1]

def s(v):
    "Flip dihedral group 4 once"
    a,b,c,d=v
    return [d,c,b,a]

if __name__ == "__main__":
    table([1,4,7,13])
