# # Q1:

# if doesn't evaluate to true, so greeting isn't intialized.
# I expect an error that greeting doesn't exist / can't be found.

# ok... I was wrong.

# apparently if you run an if statement even if the
# if statement isn't executed, the variables within
# that statement still get initialized...to nil.

# # Q2:

# I expect greetings to return {a: hi there}... because
# informal_greeting was assigned to same object as
# greetings and then that object gets mutated by 
# <<.

# Q3:

# A:
# one is: one
# two is: two
# three is: three

# B:
# one is: one
# two is: two
# three is: three

# C:
# one is: two
# two is: three
# three is: one

# Q4:

# damn had to reread it mult times.
# so dot separate ip address = numerics between 0 and
# 255 divided by dots.

# he first splits the string into array of strings and assigns
# to variable

# he then loops and pops off 1 by 1 each word of array
# let me fix it

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   if dot_separated_words.size == 4
#     while dot_separated_words.size > 0 do
#       word = dot_separated_words.pop
#       break unless is_an_ip_number?(word)
#       if dot_separated_words.size == 0
#         return true
#       end
#     end
#   end
  
#   return false
# end