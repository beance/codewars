# frozen_string_literal: true

# Alphabetical Sequence
# https://www.codewars.com/kata/5bd00c99dbc73908bb00057a/train/ruby

def alpha_seq(s)
  s.downcase.chars.sort.map { |c| (c * (c.ord - 96)).capitalize }.join(',')
end

p alpha_seq('ZpglnRxqenU')
# "Eeeee,Ggggggg,Llllllllllll,Nnnnnnnnnnnnnn,Nnnnnnnnnnnnnn,Pppppppppppppppp,Qqqqqqqqqqqqqqqqq,Rrrrrrrrrrrrrrrrrr,Uuuuuuuuuuuuuuuuuuuuu,Xxxxxxxxxxxxxxxxxxxxxxxx,Zzzzzzzzzzzzzzzzzzzzzzzzzz"
