# frozen_string_literal: true

# Detect Pangram
# https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby

def pangram?(sentence)
  ("a".."z").all? { |c| sentence.downcase.include?(c) }
end
