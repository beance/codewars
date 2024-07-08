# frozen_string_literal: true
# Scoring Tests
# https://www.codewars.com/kata/55d2aee99f30dbbf8b000001/train/ruby

def score_test(tests, right, omit, wrong)
  tests.count(0) * right + tests.count(1) * omit - tests.count(2) * wrong
end


p score_test([0, 0, 0, 0, 2, 1, 0], 2, 0, 1)