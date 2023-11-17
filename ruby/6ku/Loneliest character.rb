# frozen_string_literal: true

# https://www.codewars.com/kata/5f885fa9f130ea00207c7dc8/train/ruby

def loneliest(string)
  trimmed_string = string.strip
  max_spaces = 0
  characters = []
  left = add_hash(trimmed_string)
  right = add_hash(trimmed_string.reverse)

  trimmed_string.delete(' ').chars.each do |char|
    total_spaces = left[char][:count] + right[char][:count]
    if total_spaces > max_spaces
      max_spaces = total_spaces
      characters = [char]
    elsif total_spaces == max_spaces && !characters.include?(char)
      characters << char
    end
  end
  characters
end

def add_hash(string)
  tmp = {}
  prev_char_index = 0
  string.each_char do |char|
    next unless char != ' '
    left_count = string[prev_char_index...string.index(char)].count(' ')
    prev_char_index = string.index(char)
    tmp[char] = { count: left_count }
  end
  tmp
end

p loneliest('a bcs           d k')


def loneliest(s)
  letters = s.strip.scan(/(?=( *\w *))/).flatten
  max_length = letters.max_by(&:length).length
  letters.select { |a| a.length == max_length }.map(&:strip)
end