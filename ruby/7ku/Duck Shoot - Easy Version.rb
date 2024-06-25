# frozen_string_literal: true

# Duck Shoot - Easy Version
# https://www.codewars.com/kata/57d27a0a26427672b900046f/train/ruby

def duck_shoot(ammo, aim, ducks)
  shot = (ammo * aim).floor
  ducks.gsub(/2/) do |v|
    if shot.positive?
      (shot -= 1
       'X')
    else
      v
    end
  end
end

p duck_shoot(4, 0.64, '|~~2~~~22~2~~22~2~~~~2~~~|')
