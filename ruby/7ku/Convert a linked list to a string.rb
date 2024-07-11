# frozen_string_literal: true

# Convert a linked list to a string
# https://www.codewars.com/kata/582c297e56373f0426000098/train/ruby
def stringify(list)
  list.nil? ? 'nil' : "#{list.data} -> #{stringify(list.next_node)}"
end

class Node
  attr_reader :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

linked_list = Node.new(1, Node.new(2, Node.new(3)))
p stringify(linked_list) # '1 -> 2 -> 3 -> nil'
