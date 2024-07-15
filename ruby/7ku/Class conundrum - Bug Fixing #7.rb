# frozen_string_literal: true

# Class conundrum - Bug Fixing #7
# https://www.codewars.com/kata/55cd4ce59382498cbd000080

class List
  attr_reader :type, :items, :counter

  def initialize(type)
    @type = type
    @items = []
    @counter = 0
  end

  def add(item)
    return "This item is not of type: #{@type}" unless item.is_a?(@type)

    @items << item
    @counter += 1
    self
  end
end

my_list = List.new(String)

p my_list.add('Hello').counter
