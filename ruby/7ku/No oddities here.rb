# frozen_string_literal: true

# No oddities here
# https://www.codewars.com/kata/51fd6bc82bc150b28e0000ce/train/ruby
def no_odds(values)
  values.select(&:even?)
end
