# frozen_string_literal: true

# Simple Fun #86: is Information Consistent?
# https://www.codewars.com/kata/58956f5ff780edf4a70000a2/train/ruby

def is_information_consistent(evidences)
  evidences[0].each_index.all? do |d|
    evidences.none? { |w| w[d] == 1 } || evidences.none? { |w| w[d] == -1 }
  end
end

def is_information_consistent(evidences)
  evidences.transpose.all? { |x| x.max - x.min < 2 }
end

evidences = [
  [0, 1, 0, 1],
  [-1, 1, 0, 0],
  [-1, 0, 0, 1]
]
p is_information_consistent(evidences)
