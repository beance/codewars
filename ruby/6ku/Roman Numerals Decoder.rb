# frozen_string_literal: true

# Roman Numerals Decoder
# https://www.codewars.com/kata/51b6249c4612257ac0000005

DIGIT = {
  "I" => 1, "V" => 5, "X" => 10, "L" => 50,
  "C" => 100, "D" => 500, "M" => 1000
}

def solution(roman)
  roman.chars.map { |char| DIGIT[char] }.each_with_index.reduce(0) do |acc, (x, y)|
    next_acc = acc + x
    next_acc -= x * 2 if (y + 1 < roman.size) && (DIGIT[roman[y + 1]] > x)
    next_acc
  end
end

p solution("MMVIII")
