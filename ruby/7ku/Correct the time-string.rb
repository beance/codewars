# frozen_string_literal: true

# Correct the time-string
# https://www.codewars.com/kata/57873ab5e55533a2890000c7/train/ruby
#
def time_correct(t)
  return t if t.nil? || t.empty?
  return nil unless t.match?(/^[0-9]{2}:[0-9]{2}:[0-9]{2}$/)
  h, m, s = t.split(":").map(&:to_i)
  s += m * 60 + (h % 24 * 3600)
  "%02d:%02d:%02d" % [s / 3600, s / 60 % 60, s % 60]
end

p time_correct "0a:1c:22"
