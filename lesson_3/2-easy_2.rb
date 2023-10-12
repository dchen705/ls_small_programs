# Question 1

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p ages.include?('Spot')
# p ages.has_key?('Spot')
# p ages.key?('Spot')

# A key: Hash#member
# searching for key in hash

# Question 2:

# string manipulation - upcase and downcase
# precise substring replacement

# munsters_description = "The Munsters are creepy in a good way."
# puts munsters_description.upcase.sub('T', 't').sub('M', 'm')
# puts munsters_description.downcase.capitalize
# puts munsters_description.downcase
# puts munsters_description.upcase

# # couldn't find way to downcase or upcase only one specified character
# # in string

# #gsub changes the first occurence or all occurences?
# # all occurences

# # #sub changes first occurence only

# oh didn't realize for first, it was swapcase

# Question 3:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# # ages << additional_ages
# # doesn't work

# ages = ages.merge(additional_ages)

# p ages

# # also could do !merge

# at this point, i realize im unfamiliar with hash methods the most

# Question 4:

# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.include? 'Dino'

# p advice.match? 'Dino'

# Question 5:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# easier way to write array

# Question 6:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << 'Dino'
# add to array


# Question 7
# concat and push also work
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"<< 'Hoppy'
# p flintstones

# Question 8
# cut off substring permanently and return the cutted substring
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.slice!('Few things in life are as important as ')

# # if used #slice, original string stays same, cutted substring is returned

# # advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
# p advice # => "house training your pet dinosaur."

# for slice you can use a strt and end idx for range
# for string#index -> you can put an entire substring rather than
# character and get the index at start of this substring

# Question 9:

# Write a one-liner to count the number of lower-case 't' characters in the following string:

# statement = "The Flintstones Rock!"

# # guessing theres a method for this then.

# # or a method that returns an array with characters that match
# # then i get length of array

# p statement.scan('t').length
# p statement.count('t')

# Question 10

# # how to center this title over a 40 character width table?
# title = "Flintstone Family Members"

# # # i can do it algorithmically but is there an easy ruby method
# # # let's just do algorithmically:
# # # 1) subtract length of title from 40 to get total whitespace count
# # # 2) divide total whitespace by two to get whitespace count on either side
# # # 3) add white space by count result in 2) at index 0 and index length of title

# total_space = 40 - title.length
# space_on_side = total_space / 2

# title.prepend(' ' * space_on_side)
# title.insert(title.length, (' ' * space_on_side))

# p title

# # # A key: yup there's some method -
# title.center(40)