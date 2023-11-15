# frozen_string_literal: true

# https://www.codewars.com/kata/59ad13d5589d2a1d84000020/train/ruby

def reverse_fizz_buzz(array)
  fiz = array.index('Fizz')
  buz = array.index('Buzz')
  fiz_buz = array.index('FizzBuzz')
  arr = []
  arr << (fiz.nil? ? fiz_buz + 1 : fiz + 1)
  arr << (buz.nil? ? fiz_buz + 1 : buz + 1)
end

# p reverse_fizz_buzz(["Fizz", "Fizz", "Fizz", "Fizz", "Fizz", "FizzBuzz"]) #== [1,6]
p reverse_fizz_buzz([1, 2, "Fizz", 4, "Buzz"]) #== [1,6]
