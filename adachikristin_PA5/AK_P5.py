#Implementation of op-some schema
def opSome( condition, operation, arg ):
    return list( map(( lambda x: operation(x) if condition(x) else x ), arg ))

#Takes a number and determines if it's odd
def odd( x ):
    return x % 2 == 1

#Takes a number and returns its square
def sq( x ):
    return x * x

#Takes a number and returns if it's prime
def isPrime( x ):
    for i in range( 3, x ):
        if x % i == 0:
            return False
    return True

#Takes a number and returns its double
def double( x ):
    return 2 * x

#Test cases
print( opSome( odd, sq, [] ))
print( opSome( odd, sq, [2] ))
print( opSome( odd, sq, [3] ))
print( opSome( odd, sq, [3,6,4,5,2] ))
print()
print( opSome( isPrime, double, [] ))
print( opSome( isPrime, double, [2] ))
print( opSome( isPrime, double, [3] ))
print( opSome( isPrime, double, [3,6,4,5,2] ))

'''
[]
[2]
[9]
[9, 6, 4, 25, 2]

[]
[4]
[6]
[6, 6, 8, 10, 4]
'''
