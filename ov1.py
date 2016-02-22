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

if __name__ == "__main__":
    table([1,4,7,13])
