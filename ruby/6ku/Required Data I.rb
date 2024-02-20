# frozen_string_literal: true

# Required Data I
# https://www.codewars.com/kata/55f95dbb350b7b1239000030/train/ruby

def count_sel(lst)
  counts = lst.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
  only_once = counts.select { |_key, value| value == 1 }
  counts.select! { |_key, value| value == counts.max_by { |_, v| v }[1] }
  [lst.size, lst.uniq.size, only_once.size, [counts.keys.sort, counts.values.first]]
end

p count_sel([5, -1, 1, -1, -2, 5, 0, -2, -5, 3])
