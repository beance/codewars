# frozen_string_literal: true

# High score table
# https://www.codewars.com/kata/5962bbea6878a381ed000036/train/ruby

class HighScoreTable
  attr_accessor :scores, :limit

  def initialize(limit)
    @limit = limit
    @scores = []
  end

  def update(score)
    @scores << score
    @scores = @scores.sort.reverse.take(@limit)
  end

  def reset
    @scores = []
  end
end

HighScoreTable.new(3)

high_scores = HighScoreTable.new(3)

high_scores.update(10)
high_scores.update(8)
high_scores.update(12)
high_scores.update(5)
p high_scores.scores