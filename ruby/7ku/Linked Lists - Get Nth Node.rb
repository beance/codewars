# frozen_string_literal: true

# Linked Lists - Get Nth Node
# https://www.codewars.com/kata/55befc42bfe4d13ab1000007/train/ruby

class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def get_nth(node,index)
  raise if node.nil? || index < 0
  index == 0 ? node : get_nth(node.next, index - 1)
end

