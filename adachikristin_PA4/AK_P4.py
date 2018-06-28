#Recursive function that takes a list and returns the count of numbers at
#any depth/nesting
def counter( lst ):
    if len( lst ) == 0:
        return 0
    if isinstance( lst[0], list ):
        if len( lst ) == 0:
            return 0
        else:
            return counter( lst[0] ) + counter( lst[1:] )
    else:
        if len( lst ) == 1:
            if str( lst[0] ).isdigit():
                return 1
            else:
                return 0
        if str( lst[0] ).isdigit():
            return counter( lst[1:] ) + 1
        else:
            return counter( lst[1:] )

#Non-recursive function that checks if the atoms of the given list form a
#palindrome.
def isPal( lst ):
    if not isinstance( lst, list ):
        return False
    for atom in lst:
        if atom == lst[-1]:
            lst.pop( -1 )
        else:
            return False
    return True

#Recursive function that checks if the atoms of the given list form a
#palindrome.
def isPalRec( lst ):
    if not isinstance( lst, list ):
        return False
    if len( lst ) < 2:
        return True
    if lst[0] != lst[-1]:
        return False
    return isPalRec( lst[1:-1] )

print( "-----------" )
print( "Question #1" )
print( "-----------" )
print( counter([]) )
print( counter([3]) )
print( counter(["a"]) )
print( counter([5, 1, "a", 4]) )
print( counter([[1, 1, ["a"]], 7, ["b", [3]]]) )

print( "------------" )
print( "Question #2a" )
print( "------------" )
print( isPal(None) )
print( isPal("a") )
print( isPal(["a"]) )
print( isPal(["a", "b", "c", "b", "a"]) )
print( isPal(["a", "b", "c", "c", "b", "a"]) )
print( isPal(["a", "b", "c", "a"]) )
print( isPal(["a", "b", "d", "e", "f", "f", "c", "b", "d", "a"]) )
print( isPal([["a", "b"], ["b", "a"]]) )

print( "------------" )
print( "Question #2b" )
print( "------------" )
print( isPalRec(None) )
print( isPalRec("a") )
print( isPalRec(["a"]) )
print( isPalRec(["a", "b", "c", "b", "a"]) )
print( isPalRec(["a", "b", "c", "c", "b", "a"]) )
print( isPalRec(["a", "b", "c", "a"]) )
print( isPalRec(["a", "b", "d", "e", "f", "f", "c", "b", "d", "a"]) )
print( isPalRec([["a", "b"], ["b", "a"]]) )

'''
-----------
Question #1
-----------
0
1
0
3
4
------------
Question #2a
------------
False
False
True
True
True
False
False
False
------------
Question #2b
------------
False
False
True
True
True
False
False
False
'''
