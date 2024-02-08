# frozen_string_literal: true
# Method For Counting Total Occurence Of Specific Digits
# https://www.codewars.com/kata/56311e4fdd811616810000ce/train/ruby

class List

  def count_spec_digits(integer_list, digit_list)
    integer_list.map! { |i| i.abs.digits }.flatten!
    digit_list.map { |d| [d, integer_list.count(d)] }
  end
end


l = List.new()

integers_list = [-18, -31, 81, -19, 111, -888]
digits_list = [1, 8, 4]
p l.count_spec_digits(integers_list, digits_list)
#[[1, 3], [3, 2]]
