# frozen_string_literal: true

# Move 10
# https://www.codewars.com/kata/57cf50a7eca2603de0000090/train/ruby
def move_ten(st)
  st.chars.map do |x|
    char = x.ord + 10
    char = char - 122 + 96 if char > 122
    char.chr
  end.join
end

def move_ten(s)
  s.tr('a-z', 'k-za-j')
end

p move_ten('testcase')
