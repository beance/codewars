# frozen_string_literal: true
# Jenny the youngest detective
# https://www.codewars.com/kata/58b972cae826b960a300003e/train/ruby



def missing(nums, str)
  letters = str.downcase.delete(' ').chars.values_at(*nums.sort)
  letters.include?(nil) ? 'No mission today' : letters.join
end

p missing([5, 0, 3], "I love you")
p missing([29, 31, 8], "The quick brown fox jumps over the lazy dog") #("bay")
p missing([12, 4, 6], "Good Morning") # ("No mission today")
