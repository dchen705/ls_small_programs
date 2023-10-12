# # Q1

# (0..9).each { |n| puts ' ' * n + 'The Flintstones Rock!'}

# # ruby's version of for loop
# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
# so .times starts at 0 and iterates up by 1

# # Q2
# puts "the value of 40 + 2 is " + (40 + 2)

# errors becuz cant adding string and numeric object
# fix 1: change integer to string
# fix 2: string interpolate

# concatenating is more accurate term than adding

# Q3

# add if statement that breaks if number is 0 or less than 0

# number % divisor == 0 - checks whether divisor divides num
# without leaving any remainder.

# last line returns the factors array 
# if not there, then factors method
# would return the return value of the begin end loop...

# while loop works too
# so return of loop would have been nil apparently

# # Q4
# any difference concatenating an element to 
# a buffer array using + vs <<?

# + returns / doesn't mutate original array while << mutates..

# # A key: ah, so mutating can be bad if 
# this is part of method that we want to reuse,
# the buffer array won't be the same for each call of method
# unless that's what we intended i guess.

# Q5
# probs:
# 1) method fib can't access limit
#   a) pass limit in as argument or make limit a constant
    # hmm interesting constant didn't work
# 2) fib method only returns the last Fibonacci value before hitting the limit
# not the entire sequence 
#   b) create an array in fib method that initially saves the first two nums
#   then upon each loop iteration, concatenates the new sum to the array then
#   return the array

# limit = 15

# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, limit)
# puts "result is #{result}"

# Q6
# I'd expect output == 34...
# wondering why the + 8 from method didn't carry through?
# ruby's methods get pass by reference value
# the local variable some number is intialized to point
# to same numeric object as answer, however as numeric
# objects are immutable...thus the += will reassign
# some_number to different numeric object, while
# answer variable refers to same numeric object

# #Q7
# Yes, hashes, like arrays are mutable in a method. The values
# can get changed...it is not reassignment because otherwise
# an entirely new hash has to be made.

# Q8

# paper


# Q9

# no