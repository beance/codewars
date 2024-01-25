# frozen_string_literal: true

# https://www.codewars.com/kata/5300901726d12b80e8000498/train/ruby

def fizzbuzz(n)
  (1..n).map do |i|
    if (i % 3).zero? && (i % 5).zero?
      'FizzBuzz'
    elsif (i % 5).zero?
      'Buzz'
    elsif (i % 3).zero?
      'Fizz'
    else
      i
    end
  end
end

p fizzbuzz(15) #== [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz']
