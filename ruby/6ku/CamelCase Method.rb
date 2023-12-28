# frozen_string_literal: true

# CamelCase Method
# https://www.codewars.com/kata/587731fda577b3d1b0001196/train/ruby

class String
  def camelcase
    split.map(&:capitalize).join
  end
end
p "camel case word".camelcase
