# Q1:

# i predict a and c will point to same object
# not sure if b will also point to same. 
# not sure if there's only 1 object for each string literal
# or if it creates a new object equal to this string literal
# even if other object already exists that's equal to same string literal

# also no guarantee that two runs of same program will have
# same object ids.

# Q2:

# I predict all three var will have same object id.
# i think there's a dedicated memory space for each
# numeric object.

# Q3:

# arg 1 won't change because += is a reassignment of the local var
# in the method
# arg 2 will change because << mutates the arg 2

# Q4: 
# so in this case, im guessing an_array_param, the newly
# created local array variable is reassigned while
# the original argument array passed in my_array stays the same.

# Q5:

# instead of mutating either argument, we can have the method
# return both the modified string and array local objects
# within the method.

# Q6: 

# ternary expression of conditional? - ternary for 3 operands.
# nope if you put a boolean statement in method as last
# expression, ruby will return true or false
