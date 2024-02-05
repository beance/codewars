# frozen_string_literal: true

# Dinner Plans
# https://www.codewars.com/kata/57212c55b6fa235edc0002a2/train/ruby

def common_ground(s1, s2)
  words_in_common = s1.split & s2.split
  if words_in_common.empty?
    "death"
  else
    words_in_common.sort_by { |word| s2.split.index(word) }.join(" ")
  end
end

def common_ground(s1, s2)
  common = (s2.split & s1.split).join(" ")
  common.empty? ? "death" : common
end

p common_ground("war advice alliance shield sword the in enemy enemy observe quiver treaty in meet meet drink ask to from sword drink shield armour on spear", "assault quiver on war bow quiver quiver bow alliance sword general meet for drink catapult shield on spear armour in alliance treaty consult spear friend peace soldier assault consult in")
