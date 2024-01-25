# frozen_string_literal: true

# https://www.codewars.com/kata/5727868888095bdf5c001d3d/train/ruby

def string_to_int_list(s)
  s.split(',').reject(&:empty?).map(&:to_i)
end

p string_to_int_list('1,2,3,,,4,,5,,,')

# def string_to_int_list(s)
#   s.scan(/-?\d+/).map(&:to_i)
# end
