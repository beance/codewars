# frozen_string_literal: true

# Genetic Algorithm Series - #4 Get population and fitnesses
# https://www.codewars.com/kata/567b468357ed7411be00004a/train/ruby

def map_population_fit(population, &fitness)
  population.map { |v| {chromosome: v, fitness: fitness.call(v)} }
end
