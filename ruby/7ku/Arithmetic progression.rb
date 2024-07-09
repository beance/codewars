# frozen_string_literal: true

# Arithmetic progression
# https://www.codewars.com/kata/55caf1fd8063ddfa8e000018/train/ruby

def arithmetic_sequence_elements(a, d, n)
  (0...n).map { |i| a + i * d }.join(', ')
end

p arithmetic_sequence_elements(1, 2, 5)
