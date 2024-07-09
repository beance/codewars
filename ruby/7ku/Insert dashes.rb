# frozen_string_literal: true

# Insert dashes
# https://www.codewars.com/kata/55960bbb182094bc4800007b/train/ruby
def insert_dash(num)
  digits = num.digits.reverse
  digits.map.with_index do |e, i|
    next e.to_s if i == digits.size - 1

    e.odd? && digits[i + 1].odd? ? "#{e}-" : e.to_s
  end.join
end

p insert_dash(454_793)
