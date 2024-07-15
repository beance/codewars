# frozen_string_literal: true

# Sum squares of numbers in list that may contain more lists
#
def SumSquares(n)
  n.flatten.sum { |e| e**2 }
end

l = Array[1, Array[Array[3], 10, 5, Array[2, Array[3], Array[4], Array[5, Array[6]]]], Array[10]]

p SumSquares(l)
