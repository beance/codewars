# frozen_string_literal: true

# Genetic Algorithm Series - #2 Mutation
# https://www.codewars.com/kata/567b39b27d0a4606a5000057/train/ruby

def mutate(chromosome, p)
  chromosome.gsub(/[0-9]/) do |digit|
    case digit
    when '0'
      rand < p ? '1' : '0'
    when '1'
      rand < p ? '0' : '1'
    end
  end
end

zero = '0000000000'
one = '1111111111'

# p mutate(zero, 0.5)
p mutate(zero, 1)
p mutate(one, 1)
