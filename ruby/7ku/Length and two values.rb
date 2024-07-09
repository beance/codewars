# frozen_string_literal: true
# Length and two values.
# https://www.codewars.com/kata/62a611067274990047f431a8/train/ruby

def alternate(n, first, second)
  [first,second].cycle.take(n)
end

p alternate(20, "blue", "red")
#(['blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red'])
