# ORing arrays
# https://www.codewars.com/kata/5ac5e9aa3853da25d9000102/train/ruby
def or_arrays(arr1, arr2, or_value = 0)
  if arr1.length > arr2.length
    arr1.map.with_index { |x, i| x | (arr2[i] || or_value) }
  else
    arr2.map.with_index { |x, i| x | (arr1[i] || or_value) }
  end
end

def or_arrays(arr1, arr2, or_value = 0)
  arr1, arr2 = [arr1, arr2].sort_by(&:length)
  arr2.zip(arr1).map { |a, b| a | (b || or_value) }
end

p or_arrays([1, 2, 3], [1, 2, 3], 3)
# p or_arrays([1,2,3],[4,5,6])
