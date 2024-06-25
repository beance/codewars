# frozen_string_literal: true

# Remove All The Marked Elements of a List
# https://www.codewars.com/kata/563089b9b7be03472d00002b/train/ruby

class Array
  def remove_(integer_list, values_list)
    integer_list - values_list
  end
end

l = []

integer_list = [1, 1, 2, 3, 1, 2, 3, 4]
values_list = [1, 3]
p l.remove_(integer_list, values_list) # [2, 2, 4]
