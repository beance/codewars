# frozen_string_literal: true

# https://www.codewars.com/kata/64e363e8710fcb0a64fdb74d/train/ruby

def distribute(chances, chance_to_distribute)
  chances = chances.map.with_index { |e, i| [e, -i] }.sort.reverse
  chance_to_distribute.times do |i|
    chances[i % chances.size][0] += 1
  end
  chances.sort_by(&:last).map(&:first).reverse
end
p distribute([22, 9, 22, 22, 9, 2], 14) # [43, 33, 17, 7]
