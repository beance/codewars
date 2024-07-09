# Lost number in number sequence
#
def find_deleted_number(arr, mixed_arr)
  result = (arr - mixed_arr.sort)[0]
  result.nil?  ? 0 : result
end

p find_deleted_number([1,2,3,4,5], [3,4,1,5])
p find_deleted_number([1,2,3,4,5,6,7,8,9], [5,7,6,9,4,8,1,2,3])