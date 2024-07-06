#Simple Fun #67: Array Change
# https://www.codewars.com/kata/5893f43b779ce54da4000124/train/ruby


def array_change(arr)
  count = 0
  (1...arr.length).each do |i|
    while arr[i - 1] >= arr[i]
      arr[i] += 1
      count += 1
    end
  end
  count
end