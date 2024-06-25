# frozen_string_literal: true

# Implement Array#transpose!
# https://www.codewars.com/kata/580311daab6c20e1ba000a9d/train/ruby

class Array
  def transpose!
    replace(transpose)
  end
end

p [[1, 2, 7], [3, 5, 6]].transpose! # [[1, 3], [2, 5], [7, 6]])
