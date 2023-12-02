# frozen_string_literal: true

# Simple Fun #38: House Of Cats
# https://www.codewars.com/kata/588810c99fb63e49e1000606/train/rubyhttps://www.codewars.com/kata/588810c99fb63e49e1000606/train/ruby
def house_of_cats(legs)
  (legs % 4 / 2..legs / 2).step(2).to_a
end

# p house_of_cats(8) #[0,2,4]
p house_of_cats(44) # [0,2,4]
