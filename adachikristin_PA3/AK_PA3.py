import random

#Creates a random list of 20 integers within given range
def randIntList( a, b ):
    lst = []
    for i in range( 0, 20 ):
        lst.append( random.randint( a, b ) )
    return lst

#Creates a random list of 20 float values within given range
def randFloatList( a, b ):
    lst = []
    for i in range( 0, 20 ):
        lst.append( random.uniform( a, b ) )
    return lst

#Converts the given list into polynomial form
def writePoly( lst ):
    poly = ""
    if len(lst) == 0:
        poly = "0"
    for i in range( len(lst) ):
        term = lst[i][0]
        coef = lst[i][1]
        if term > 0:
            poly += "+" + str(term)
        elif term < 0:
            poly += str(term)
        if coef == 1:
            poly += "x"
        elif coef == 0:
            continue
        else:
            poly += "x^" + str(coef)
    print( poly )

#Test cases
print( "-----------" )
print( "Question #1" )
print( "-----------" )
print( randIntList( 0, 100 ) )
print( randFloatList( 10.0, 80.0 ) )

print( "-----------" )
print( "Question #2" )
print( "-----------" )
writePoly( [] )
writePoly( [[2,1], [1,0]] )
writePoly( [[3,2], [-1,0]] )
writePoly( [[5,2], [-4,1], [1,0]] )
writePoly( [[7,14], [11,13], [-3,2], [7,1], [-5,0]] )
writePoly( [[1,0], [2,1], [-5,3], [-3,1], [7,0]] )

'''
-----------
Question #1
-----------
[8, 7, 15, 93, 78, 86, 73, 63, 64, 79, 4, 9, 22, 15, 70, 28, 100, 84, 71, 37]
[44.70301461865862, 54.330050245206046, 41.00910458305614, 33.451284648920996, 62.595989965991286, 28.814853404130414
, 75.53752860270723, 36.27411585787596, 61.22397197512553, 75.32924616518349, 74.95014714497428, 30.706086313273325,
29.719780085514525, 26.04647820865381, 48.88718957380717, 69.71751633969296, 47.870968921255255, 77.3475756345795, 1
0.289951063099894, 36.014646873965106]
-----------
Question #2
-----------
0
+2x+1
+3x^2-1
+5x^2-4x+1
+7x^14+11x^13-3x^2+7x-5
+1+2x-5x^3-3x+7
'''
