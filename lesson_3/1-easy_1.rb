# Question 1

# What would you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# My A: [1, 2, 3]
# A Key: 
# 1
# 2
# 2
# 3

# Why: uniq returns new array but numbers wasn't modified.
# puts will call to_s and print each element on new line

# Question 2

# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name

# My A:
# != means not equal to, used in conditionals

# I have to look in docs?
# Object#! means take negative boolean of
# I know ! after methods usually means mutating

# I've seen ? after some methods for validation like integer?
# I've seen ? used for ternary conditional operators.

# I've never seen ? before something

# !! not sure... can look up, what does it belong to?
# couldn't find in docs
# googled it.
# apparently !! converts to boolean value.
# ! gives you negative boolean of operand (can i see this in action?)

# My A: Ok kinda a trick question. ? and ! at end of something isn't anything, it's
# part of method name like i thought.

# Question 3

# Replace the word "important" with "urgent" in this string:
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice = advice.gsub('important', 'urgent')
# p advice

# Question 4

# numbers = [1, 2, 3, 4, 5]

# def delete_at_print(num)
#   num.delete_at(1)
#   print num
# end

# def delete_print(num)
#   num.delete(1)
#   print num
# end

# delete_at_print(numbers)
# numbers = [1, 2, 3, 4, 5]
# delete_print(numbers)

# Both delete_at and delete are mutating array methods.'
# delete_at(arg) deletes element at index arg
# while delete(arg) deletes elements == to arg

# Question 5

# Programmatically determine if 42 lies between 10 and 100.

# puts (42 >= 10 && 42 <= 100)
# puts (10..100).include?(42)

# ruby's range object is.bound with () not []

# Question 6

# famous_words = "seven years ago..."
# puts famous_words.insert(0, 'Four scores and ')

# famous_words = "seven years ago..."
# famous_words[0] << 'Four scores and '
# puts famous_words

# # ^ doesn't work

# puts famous_words.prepend('Four scores and ')

# # A Key:
# "Four score and " + famous_words
# "Four score and " << famous_words

# Question 7

# flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# print flintstones.flatten!

# Question 8

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# flint_arr = Array.new
# flint_arr << flintstones.key(2)
# flint_arr << flintstones.fetch('Barney')
# p flint_arr

# A Key:
# flintstones.assoc("Barney")