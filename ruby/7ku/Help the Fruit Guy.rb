# frozen_string_literal: false
# Help the Fruit Guy
# https://www.codewars.com/kata/557af4c6169ac832300000ba/train/ruby

def remove_rotten(fruit_basket)
  return [] if fruit_basket.nil?
  fruit_basket.map { |w| w.start_with?("rotten") ? w.delete_prefix("rotten").downcase : w }
end

p remove_rotten(["apple","rottenBanana","kiwi","rottenMango"])
p remove_rotten([])