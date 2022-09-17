# frozen_string_literal: true

# Jaden Casing Strings
# https://www.codewars.com/kata/5390bac347d09b7da40006f6

class String
  def toJadenCase
    split.map(&:capitalize).join(' ')
  end
end
