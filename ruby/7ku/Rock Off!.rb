# frozen_string_literal: true
# Rock Off!
# https://www.codewars.com/kata/5b097da6c3323ac067000036/train/ruby

def solve(a, b)
  a_total, b_total = 0, 0

  a.zip(b).each do |a_score, b_score|
    case a_score <=> b_score
    when -1; b_total += 1
    when  1; a_total += 1
    end
  end

  "#{a_total}, #{b_total}: " +
    case a_total <=> b_total
    when -1; 'Bob made "Jeff" proud!'
    when  0; 'that looks like a "draw"! Rock on!'
    when  1; 'Alice made "Kurt" proud!'
    end
end

p solve([47, 7, 2], [47, 7, 2]) #'0, 0: that looks like a "draw"! Rock on!'
