# frozen_string_literal: true

# Boiled Eggs
# https://www.codewars.com/kata/52b5247074ea613a09000164/train/ruby

def cooking_time(eggs)
  5 * (eggs.to_f / 8).ceil
end

p cooking_time(12)
