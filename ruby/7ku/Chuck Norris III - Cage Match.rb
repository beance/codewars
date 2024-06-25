# frozen_string_literal: true

# Chuck Norris III - Cage Match
# https://www.codewars.com/kata/57061b6fcb7293901a000ac7/train/ruby

def head_smash(arr)
  return "This isn't the gym!!" if arr.is_a?(Numeric)
  return 'Gym is empty' if arr.empty?

  arr.map { |v| v.tr('O', ' ') } if arr.is_a?(Array)
end
