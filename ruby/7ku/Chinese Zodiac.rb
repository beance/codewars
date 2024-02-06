# frozen_string_literal: true

# Chinese Zodiac
# https://www.codewars.com/kata/57a73e697cb1f31dd70000d2

$animals = ["Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig"]
$elements = ["Wood", "Fire", "Earth", "Metal", "Water"]

def chinese_zodiac(year)
  year -= 1924
  "#{$elements[(year / 2) % 5]} #{$animals[year % 12]}"
end

p chinese_zodiac(1965)
