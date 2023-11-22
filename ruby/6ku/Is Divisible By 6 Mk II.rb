# frozen_string_literal: true

# https://www.codewars.com/kata/5a1a8b7ec374cbea92000086/train/ruby

def is_divisible_by_6(s)
  replace_star(s).select { |i| (i.to_i % 6).zero? }
end

def replace_star(arr)
  new_arr = []
  result = []
  10.times do |i|
    new_arr << arr.sub('*', i.to_s)
  end
  new_arr.each do |elem|
    result << (elem.include?('*') ? replace_star(elem) : elem)
  end
  result.flatten
end

p is_divisible_by_6('***')
