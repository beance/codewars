# frozen_string_literal: true

# Hashes on Hashes
# https://www.codewars.com/kata/5a91c5520abf5a6cf2001781/train/ruby

def hashlife(array)
  array.each_slice(2).map { |k, v| "#" * k + v[k..-1] }
end

# p hashlife([3, "ketchup", 1, "fraud", 2, "store"])
p hashlife([2,"candy",1,"fat",2,"poop"])
# ["###chup", "#raud", "##ore"]
