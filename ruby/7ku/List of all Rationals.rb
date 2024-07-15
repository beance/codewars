# frozen_string_literal: true

# List of all Rationals
# https://www.codewars.com/kata/5e4e8f5a72d9550032953717/train/ruby

class AllRationals < Enumerator
  def initialize
    super() do |yielder|
      queue = [[1, 1]]
      visited = Set.new(queue)

      while queue.any?
        a, b = queue.shift
        yielder << [a, b]

        left = [a, a + b]
        queue << left if visited.add?(left)

        right = [a + b, b]
        queue << right if visited.add?(right)
      end
    end
  end
end

$a = AllRationals.new.take(100_001).to_a

p $a[3]
