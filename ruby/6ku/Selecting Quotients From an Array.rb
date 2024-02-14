# frozen_string_literal: true

# Selecting Quotients From an Array
# https://www.codewars.com/kata/569f6ad962ff1dd52f00000d/train/ruby

def sel_quot(arr, m, dir_str = nil)
  result = []
  (0..arr.length - 2).each do |i|
    (i + 1..arr.length - 1).each do |j|
      if arr[i] % arr[j] == 0
        result.push([arr[i] / arr[j], [arr[i], arr[j]]])
      end
      if arr[j] % arr[i] == 0
        result.push([arr[j] / arr[i], [arr[j], arr[i]]])
      end
    end
  end
  result.sort_by! { |item| [item[0], item[1][0], item[1][1]] }.uniq!
  result.select! { |item| item[0] >= m }
  unless dir_str.nil?
    result.select! do |item|
      (dir_str.downcase == "even" && item[0].even?) || (dir_str.downcase == "odd" && item[0].odd?)
    end
  end
  result
end

def sel_quot(arr, m, dir_str = nil)
  a = arr.uniq.sort.combination(2).select { |x, y| y / x >= m && y % x == 0 }.map { |a, b| [b / a, [b, a]] }
  if dir_str.nil?
    a.sort
  else
    dir_str.downcase == "odd" ? a.select { |x| x[0].odd? }.sort : a.select { |x| x[0].even? }.sort
  end
end

arr = [2, 4, 27, 16, 9, 15, 25, 6, 12, 83, 24, 49, 7, 5, 94, 12, 6]

p sel_quot(arr.dup, 6, "Odd")
