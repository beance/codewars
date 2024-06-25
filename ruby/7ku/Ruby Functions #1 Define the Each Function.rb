# frozen_string_literal: true

# Ruby Functions #1: Define the "Each" Function
# https://www.codewars.com/kata/578fe028b4defd49220001c8/train/ruby

class Array
  def each
    i = 0
    while size - 1 >= i
      yield self[i]
      i += 1
    end
  end
end

arr = [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10]]
res1 = []
res2 = []
arr[0].each { |x| res1 << x * 2 }
arr[1].each { |x| res2 << x**2 }
p res1
p res2
