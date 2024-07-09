# frozen_string_literal: true
# What's my golf score?
# https://www.codewars.com/kata/59f7a0a77eb74bf96b00006a/train/ruby

def golf_score_calculator(par_str, score_str)
  # par_str.chars.zip(score_str.chars).map { |a,b| b.to_i - a.to_i }.sum
  score_str.sum - par_str.sum
end

p golf_score_calculator('443454444344544443', '353445334534445344')