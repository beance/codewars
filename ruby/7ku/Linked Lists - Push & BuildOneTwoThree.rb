# frozen_string_literal: true

# Linked Lists - Push & BuildOneTwoThree
# https://www.codewars.com/kata/55be95786abade3c71000079/train/ruby

class Node
  attr_accessor :data, :next

  def initialize(data, next_node = nil)
    @data = data
    @next = next_node
  end
end

def push(head = nil, data)
  Node.new(data, head)
end

def build_one_two_three
  push(push(push(3), 2), 1)
end

p push(nil, 1).data # 1
p push(nil, 1).next # nil
p push(Node.new(1), 2).data # 2
p push(Node.new(1), 2).next.data # 1,
