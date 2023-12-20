# frozen_string_literal: true

# Highest Scoring Word
# https://www.codewars.com/kata/57eb8fcdf670e99d9b000272/train/ruby
#
def high(x)
  x.split.max_by { |word| word.sum - 96 * word.length }
end

# p high("man i need a taxi up to ubud") #== "taxi"
p high("what time are we climbing up the volcano") #== "taxi"
# p high("what time are we climbing up the volcano") == "volcano"
# p high("take me to semynak") == "semynak"
# p high("aa b") == "b"
# p high("b aa") == "b"
p high("b aa") #== "b"
