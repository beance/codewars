# frozen_string_literal: true
# Computer problem series #1: Fill the Hard Disk Drive
# https://www.codewars.com/kata/5d49c93d089c6e000ff8428c/train/ruby
def save(sizes, hd)
  sum = 0
  sizes.take_while do |e|
    sum += e
    sum <= hd
  end.size
end

p save([12, 0, 0, 1], 12)