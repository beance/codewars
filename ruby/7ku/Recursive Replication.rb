# frozen_string_literal: true

# Recursive Replication
# https://www.codewars.com/kata/57547f9182655569ab0008c4/train/ruby

def replicate(times, number)
  return [] if times <= 0

  [number] * times
end

p replicate(8, 0)
