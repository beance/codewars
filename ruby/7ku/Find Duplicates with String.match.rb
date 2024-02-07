# frozen_string_literal: true
# Find Duplicates with String.match
# https://www.codewars.com/kata/5532e9c750fa8cd12d000079/train/ruby

def num_duplicates(message)
  # track my duplicates in an array
  duplicates = []
  # track all of the words we've looped over
  words = []
  # split on spaces and loop over each word
  message.split(" ").each do | word |
    # set each word to lower case and only accept
    # characters in the alphabet and hyphens
    word = word.downcase.match("[a-zA-Z-]+").to_s
    # is this a dulpicate?
    isDuplicate = words.include?(word)
    # have we found this duplicate already?
    alreadyFound = duplicates.include? word

    if(isDuplicate and !alreadyFound)
      # new duplicate found
      duplicates << word
    end
    # record our translated word
    words << word
  end
  # return the size of our duplicates
  duplicates.size
end

# str = 'Learning is a fun challenge. Fun is what keeps me interested!'
# p num_duplicates(str) # 2)

str = 'Kata make the brain grow strong. The brain like kata.'
p num_duplicates(str) # 3