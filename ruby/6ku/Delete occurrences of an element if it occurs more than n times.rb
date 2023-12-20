# frozen_string_literal: true

# Delete occurrences of an element if it occurs more than n times
# https://www.codewars.com/kata/554ca54ffa7d91b236000023/train/ruby

def delete_nth(order, max_e)
  count = Hash.new(0)
  order.reject { |item| (count[item] += 1) > max_e }
end

p delete_nth([20, 37, 20, 21], 1)
# p delete_nth([1,1,3,3,7,2,2,2,2], 3)
