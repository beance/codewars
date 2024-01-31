# frozen_string_literal: true
# Love vs friendship
# https://www.codewars.com/kata/59706036f6e5d1e22d000016/train/ruby

def words_to_marks(string)
  string.chars.sum { |char| char.ord - 96 }
end

def words_to_marks(string)
  string.sum - string.size * 96
end

p words_to_marks("selfness")