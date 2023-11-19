# frozen_string_literal: true
# https://www.codewars.com/kata/5936c859b165cf66c2000045/train/ruby

class Integer
  def choose(k)
    k.zero? ? 1 : (self - 1).choose(k - 1) * self / k
  end
end

p 500.choose(20)