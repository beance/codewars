#Highest and Lowest
# https://www.codewars.com/kata/554b4ac871d6813a03000035

def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end

p high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4") # "42 -9"