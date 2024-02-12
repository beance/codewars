# frozen_string_literal: false

# Adding Binary Numbers
# https://www.codewars.com/kata/55c11989e13716e35f000013/train/ruby

def add(a, b)
  max = [a.length, b.length].max
  a = a.rjust(max, "0").chars.reverse
  b = b.rjust(max, "0").chars.reverse
  temp = 0
  result = ""

  max.times do |i|
    if a[i] == "1" && b[i] == "1"
      result += temp == 1 ? "1" : "0"
      temp = 1
    elsif (a[i] == "0" && b[i] == "1") || (a[i] == "1" && b[i] == "0")
      if temp == 1
        result += "0"
        temp = 1
      else
        result += "1"
        temp = 0
      end
    else
      result += (temp == 1) ? "1" : "0"
      temp = 0
    end
  end
  if temp == 1
    result += "1"
  end
  result = result.reverse.sub(/^0+/, '')
  result.empty? ? "0" : result
end

p add("111", "10")
