# frozen_string_literal: true

# Dragon's Curve
# https://www.codewars.com/kata/53ad7224454985e4e8000eaa/train/ruby

def Dragon(n)
  return "" unless n.is_a?(Integer) && n >= 0
  str = "Fa"
  n.times { str = str.gsub(/[ab]/) { |v| v == "a" ? "aRbFR" : "LFaLb" } }
  str.gsub(/[ab]/, "")
end

p Dragon(0)
p Dragon(1)
p Dragon(2)
