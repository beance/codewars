# frozen_string_literal: true

# Unique Anagrams
# https://www.codewars.com/kata/5a0b1da9c9fc0ea9f0000081/train/ruby

def anagram(words)
  words.first.chars.permutation.map(&:join).find { |s| !words.include?(s) } || ""
end

words = ["123", "132", "213", "231", "321", "312"]
words = ["12"]
words = ["abcd", "dbac", "cbad"]
words = ["bca", "cab", "cba"]
# p ['bca', 'cab', 'cba'].include?(anagram(['abc', 'acb', 'bac']))
p anagram(words)
