# frozen_string_literal: true
# PRNG: Linear Congruential Generator
# https://www.codewars.com/kata/594979a364becbc1ab00003a/train/ruby

class LCG
  @@a = 2
  @@c = 3
  @@m = 10

  def initialize(seed)
    @seed = seed
  end

  def random
    @seed = (@@a * @seed + @@c) % @@m
    @seed.to_f / 10
  end
end

lcg=LCG.new(5)


p lcg.random
p lcg.random
p lcg.random