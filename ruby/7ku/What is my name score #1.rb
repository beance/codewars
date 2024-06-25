# frozen_string_literal: true

# What is my name score? #1
# https://www.codewars.com/kata/576a29ab726f4bba4b000bb1

$alpha = { 'ABCDE' => 1, 'FGHIJ' => 2, 'KLMNO' => 3, 'PQRST' => 4, 'UVWXY' => 5 }
def name_score(name)
  res = name.chars.sum do |c|
    $alpha.select { |key, _value| key.to_s.include?(c.upcase) }.values.sum
  end

  { name => res }
end

p name_score('Mary Jane')
