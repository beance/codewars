# frozen_string_literal: true
# The dropWhile Function
# https://www.codewars.com/kata/54f9c37106098647f400080a/train/ruby

def drop_while(arr, pred)
  arr.drop_while(&pred)
end

is_even=lambda{|n| n%2==0}
p drop_while([2,6,4,10,1,5,4,3], is_even) #[1,5,4,3]
