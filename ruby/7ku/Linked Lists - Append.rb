# frozen_string_literal: true

# Linked Lists - Append
# https://www.codewars.com/kata/55d17ddd6d7868493e000074/train/ruby

class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

def append(list_a, list_b)
  new_source = source.next
  source.next = dest
  list_b.each { |n| list_a.next = n }
end
