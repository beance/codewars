# frozen_string_literal: true

# Sort Out The Men From Boys
# https://www.codewars.com/kata/5af15a37de4c7f223e00012d/train/ruby
def men_from_boys(arr)
  man, boys = arr.uniq.partition { |x| x.even? }
  man.sort + boys.sort_by { |x| -x }
end
p men_from_boys([7, 3, 14, 17]) # ([14,17,7,3])
p men_from_boys([82, 91, 72, 76, 76, 100, 85]) # eq([72,76,82,100,91,85])
