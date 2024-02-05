# frozen_string_literal: true

# Equalize the array!
#

def equalize(arr)
  arr.map.with_index do |k, i|
    res = arr[i] - arr[0]
    res < 0 ? res.to_s : "+#{res}"
  end
end

# def equalize(arr)
#   arr.map { |n| "%+d" % (n - arr.first) }
# end

p equalize([20, 30, 35, 10])
