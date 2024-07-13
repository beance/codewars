# frozen_string_literal: true

# Building blocks
# https://www.codewars.com/kata/55b75fcf67e558d3750000a3/train/ruby

class Block
  attr_reader :get_width, :get_length, :get_height

  def initialize(arg)
    @get_width = arg[0]
    @get_length = arg[1]
    @get_height = arg[2]
  end

  def get_volume
    @get_width * @get_length * @get_height
  end

  def get_surface_area
    2 * (@get_length * @get_width + @get_length * @get_height + @get_width * @get_height)
  end
end

b = Block.new([2, 2, 2])
p b
