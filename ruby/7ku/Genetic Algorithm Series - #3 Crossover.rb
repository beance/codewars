# frozen_string_literal: true
# Genetic Algorithm Series - #3 Crossover

# https://www.codewars.com/kata/567d71b93f8a50f461000019/train/ruby

def crossover (chromosome1, chromosome2, index)
  [chromosome1[0...index] + chromosome2[index..-1], chromosome2[0...index] + chromosome1[index..-1]]
end

p crossover("110", "001", 2)