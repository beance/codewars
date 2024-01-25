# frozen_string_literal: true

# Distribute server workload
# https://www.codewars.com/kata/59f22b3cf0a83ff3e3003d8c/train/ruby

def distribute(nodes, workload)
  groups = Array.new(nodes, workload / nodes)
  (0...workload % nodes).each { |i| groups[i] += 1 }
  jobs = (0...workload).to_a
  groups.map { |n| jobs.shift n }
end

p distribute(2, 4)
