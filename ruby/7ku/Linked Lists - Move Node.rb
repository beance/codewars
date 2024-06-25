# frozen_string_literal: true

# Linked Lists - Move Node
# https://www.codewars.com/kata/55da347204760ba494000038/train/ruby

class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class Context
  attr_accessor :source, :dest

  def initialize(source, dest)
    @source = source
    @dest = dest
  end
end

def move_node(source, dest)
  raise 'Source is not present !' unless source

  new_source = source.next
  source.next = dest
  Context.new(new_source, source)
end
