# frozen_string_literal: true
# Mirror, mirror, on the wall...
# https://www.codewars.com/kata/5f55ecd770692e001484af7d/train/ruby

def mirror(data)
  data.sort[0...-1] + data.sort.reverse
end


p mirror([153, -986, -542, -505, 35, 704, -564, 254, -861, 830])
#--> [-5, -3, 2, 8, 10, 10, 10, 10, 10, 8, 2, -3, -5]