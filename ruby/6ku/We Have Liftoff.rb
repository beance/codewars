# frozen_string_literal: true
# We Have Liftoff
# https://www.codewars.com/kata/53d6387b83db278202000802/train/ruby

def liftoff(instructions)
  instructions.sort_by { |x| -x }.join(" ") + " liftoff!"
end


instructions = [8,1,10,2,7,9,6,3,4,5]

p liftoff(instructions)