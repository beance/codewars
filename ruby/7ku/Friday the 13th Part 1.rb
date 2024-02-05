# frozen_string_literal: true
# Friday the 13th Part 1
# https://www.codewars.com/kata/5925acf31a9825d616000e74/train/ruby
def killcount(counselors, jason)
  counselors.select { |c| c[1] < jason }.map { |c| c[0] }
end

conselors = [["Mike", 7],["Alysa", 3]]
p killcount(conselors, 7)# ["Alysa"]