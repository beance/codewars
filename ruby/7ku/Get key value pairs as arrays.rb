# frozen_string_literal: true

# Get key/value pairs as arrays
# https://www.codewars.com/kata/515dfd2f1db09667a0000003/train/ruby

def keysAndValues(data)
  [data.keys, data.values]
end

p keysAndValues({ a: 1, b: 2, c: 3 }) # should return [[:a, :b, :c], [1, 2, 3]]
