# frozen_string_literal: true

# Extra Perfect Numbers (Special Numbers Series #7)
# https://www.codewars.com/kata/5a662a02e626c54e87000123/train/ruby

def extra_perfect(n)
  (1..n).select(&:odd?)
end
