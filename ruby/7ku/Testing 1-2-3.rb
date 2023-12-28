# Testing 1-2-3
# https://www.codewars.com/kata/54bf85e3d5b56c7a05000cf9/train/ruby
def number(lines)
  lines.map.with_index { |line, i| "#{i + 1}: #{line}" }
end

p number(["a", "b", "c"])
