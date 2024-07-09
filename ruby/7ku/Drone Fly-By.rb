# frozen_string_literal: true
# Drone Fly-By
# https://www.codewars.com/kata/58356a94f8358058f30004b5/train/ruby

def fly_by(lamps, drone)
  "o" * drone.size + "x" * (lamps.size - drone.size)
end

p fly_by('xxxxxx', '====T')