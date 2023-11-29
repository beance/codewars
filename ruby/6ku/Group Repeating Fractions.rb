# frozen_string_literal: false

# Group Repeating Fractions
# https://www.codewars.com/kata/5613475e4778aab4d600004f/train/javascript

def repeating_fractions(numerator, denominator)
  res = (numerator.to_f / denominator).to_s.split('.')
  decimal_part = res[1].chars
  count = 0
  str = ''
  decimal_part.each_with_index do |e, i|
    if e != decimal_part[i + 1] && count.zero?
      str += e.to_s
    elsif e != decimal_part[i + 1] && count.positive?
      str += "(#{e})"
      count = 0
    elsif e == decimal_part[i + 1]
      count += 1
    end
  end

  "#{res[0]}.#{str}"
end


# def repeating_fractions(numerator,denominator)
#   numerator.fdiv(denominator).to_s.gsub(/(\d)(\1+)(?!\.)/,'(\1)')
# end

# p repeating_fractions(2, 888) # '0.(3)'
p repeating_fractions(1, 3) # '0.(3)'
