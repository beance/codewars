# frozen_string_literal: false
# Santa's Secret Sorting Sequence
# https://www.codewars.com/kata/52b21970f49607a660000b8f/train/ruby

def sort(gifts)
  n = gifts.length

  (0...n).each do |i|
    (0...n - i - 1).each do |j|
      if custom_compare(gifts[j], gifts[j + 1]) > 0
        gifts[j], gifts[j + 1] = gifts[j + 1], gifts[j]
        swapped = true
      end
    end
  end
  gifts
end

def custom_compare(gift1, gift2)
  [gift1.class.to_s, gift1] <=> [gift2.class.to_s, gift2]
end

p sort(["Legos","Toy Soldiers","Dolls","Teddy Bears"])
# ["Dolls", "Legos", "Teddy Bears", "Toy Soldiers"]