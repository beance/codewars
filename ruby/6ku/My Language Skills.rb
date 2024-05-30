# frozen_string_literal: true
# My Language Skills
# https://www.codewars.com/kata/5b16490986b6d336c900007d/train/ruby

def my_languages(results)
  results.select { |k, v| v >= 60 }.sort_by { |_k, v| -v }.map(&:first)
end

p my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})# ["Ruby", "Python"]
