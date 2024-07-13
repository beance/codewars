# frozen_string_literal: true

# Doubleton number
# https://www.codewars.com/kata/604287495a72ae00131685c7/train/ruby

def doubleton(num)
  num.next.step.detect { |i| i.digits.uniq.size == 2 }
end

p doubleton(2310)
