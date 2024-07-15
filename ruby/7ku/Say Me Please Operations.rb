# frozen_string_literal: true

# Say Me Please Operations
# https://www.codewars.com/kata/5b5e0c0d83d64866bc00001d/train/ruby
#
def say_me_operations(numbers)
  numbers.split[2..-1].map(&:to_i).map.with_index do |e, i|
    one = numbers.split[i].to_i
    two = numbers.split[i + 1].to_i
    if one + two == e
      'addition'
    elsif one - two == e
      'subtraction'
    elsif one * two == e
      'multiplication'
    elsif one / two == e
      'division'
    end
  end.join(', ').strip
end

p say_me_operations('1 2 3 5 8')
