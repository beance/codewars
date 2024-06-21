# frozen_string_literal: true
# Gigasecond
# https://www.codewars.com/kata/53f99455573c064ad200010b/train/ruby

require 'date'
def gigasecond date
  date + 10**9 / 86400
end

p gigasecond(Date.new(2011, 4, 25))