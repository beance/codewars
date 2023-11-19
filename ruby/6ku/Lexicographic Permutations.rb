# frozen_string_literal: true

# https://www.codewars.com/kata/55baa55cf332e67eb000000a/train/ruby

def nth_perm(n, d)
  [*0...d].permutation.lazy.take(n).to_a[-1]
end

p nth_perm(1000, 8)
