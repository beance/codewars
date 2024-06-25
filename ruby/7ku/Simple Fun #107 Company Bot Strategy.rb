# frozen_string_literal: true

# Simple Fun #107: Company Bot Strategy
# https://www.codewars.com/kata/589a9aadc4e27877cb000027/train/ruby

def company_bot_strategy(training_data)
  correct, _wrong = training_data.partition { |x| x[1] == 1 }
  return 0 if correct.empty?

  (correct.sum(&:first) / correct.size.to_f)
end

def company_bot_strategy(training_data)
  correct = training_data.select { |x| x[1] == 1 }
  return 0 if correct.empty?

  (correct.sum(&:first) / correct.size.to_f)
end

p company_bot_strategy([[4, -1], [0, 0], [5, -1]])
# 4.5
