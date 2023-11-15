# frozen_string_literal: true

# https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991/train/ruby

def revrot(str, sz)
  return '' if sz <= 0 || str.empty? || sz > str.length

  ma = str.chars.each_slice(sz).to_a
  ma.each { |x| ma.pop if x.length < sz }
  ma.map do |x|
    x.map(&:to_i).inject(:+).even? ? x.reverse! : x.rotate!
  end.join
end

p revrot('733049910872815764', 5) == '330479108928157'
