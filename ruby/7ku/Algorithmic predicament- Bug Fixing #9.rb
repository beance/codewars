# frozen_string_literal: true

# Algorithmic predicament- Bug Fixing #9
# https://www.codewars.com/kata/55d3b1f2c1b2f0d3470000a9/train/ruby

def highest_age(g1, g2)
  hash = Hash.new(0)
  [g1, g2].flatten.each { |x| hash[x['name']] += x['age'] }
  hash.invert.max[1]
end

# @!visibility

p highest_age([{ 'name' => 'kay', 'age' => 1 }, { 'name' => 'john', 'age' => 13 }, { 'name' => 'kay', 'age' => 76 }],
              [{ 'name' => 'john', 'age' => 1 }, { 'name' => 'alice', 'age' => 77 }])
# 'alice','Return the name of the highest total age'
