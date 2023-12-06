# frozen_string_literal: true

# Always perfect
# https://www.codewars.com/kata/55f3facb78a9fd5b26000036/train/ruby

def check_root(string)
  numbers = string.split(',')

  return 'incorrect input' if numbers.length != 4 || numbers.any? { |num| num.to_i.to_s != num }
  return 'not consecutive' if numbers.each_cons(2).any? { |a, b| b.to_i - a.to_i != 1 }

  total_product_plus_one = numbers.map(&:to_i).reduce(1, :*) + 1
  square_root = Math.sqrt(total_product_plus_one)

  "#{total_product_plus_one}, #{square_root.to_i}"
end



# p check_root('4,5,6,7')
# p check_root('10,11,12,13,15')
# p check_root('3,s,5,6')
p check_root("25000,25001,25002,25003")
