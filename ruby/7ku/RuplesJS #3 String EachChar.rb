# frozen_string_literal: true

# RuplesJS #3: String EachChar
# https://www.codewars.com/kata/56808724e7784d220c00003f/train/ruby

class String
  def each_char(arg)
    if arg.is_a?(Symbol)
      chars.map { |i| send(arg, i) }.join
    else
      chars.map { |i| i + arg }.join
    end
  end
end

# p 'hello'.each_char('123')

def f(c)
  c.upcase
end

p 'hello'.each_char(:f)
