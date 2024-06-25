# frozen_string_literal: true

# Mean vs. Median
# https://www.codewars.com/kata/5806445c3f1f9c2f72000031/train/ruby

def mean_vs_median(numbers)
  mean = numbers.sum / numbers.length
  median = numbers.sort[numbers.length / 2]
  if mean > median
    'mean'
  elsif mean < median
    'median'
  else
    'same'
  end
end

p mean_vs_median([1, 2, 37])
