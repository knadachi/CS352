import math
import cmath

def quadratic(a, b, c):
    d = (b**2)-(4*a*c)
    if a == 0:
        print( "Not quadratic." )
        return
    elif d < 0:
        x1 = (-b+cmath.sqrt(d))/(2*a)
        x2 = (-b-cmath.sqrt(d))/(2*a)
        print( "x1 =", x1, "// x2 =", x2)
    elif d == 0:
        x = (-b+math.sqrt(d))/(2*a)
        print( "x =", x )
    else:
        x1 = (-b+math.sqrt(d))/(2*a)
        x2 = (-b-math.sqrt(d))/(2*a)
        print( "x1 =", x1, "// x2 =", x2)

#test cases
quadratic(2, -1, -1)
quadratic(1, 4, 4)
quadratic(3, 11, 0)
quadratic(4, 0, 8)
quadratic(0, 4, 4)

'''
x1 = 1.0 // x2 = -0.5
x = -2.0
x1 = 0.0 // x2 = -3.6666666666666665
x1 = 1.4142135623730951j // x2 = -1.4142135623730951j
Not quadratic.
'''
