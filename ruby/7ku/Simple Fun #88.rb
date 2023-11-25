# frozen_string_literal: true

# https://www.codewars.com/kata/589577f0d1b93ae32a000001/train/ruby

def sort_by_height(a)
  people = a.reject { |num| num == -1 }.sort
  a.map { |elem| elem == -1 ? -1 : people.shift }
end

p sort_by_height [-1, 150, 190, 170, -1, -1, 160, 180]
