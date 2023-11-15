# frozen_string_literal: true

# https://www.codewars.com/kata/543ddf69386034670d000c7d/train/ruby

require 'time'
def hand_angle(date)
  hour, minute = date.strftime('%I:%M').split(':').map(&:to_i)
  hour = hour  + (minute.to_f / 60)
  hour_angle = hour * 30
  minute_angle = minute * 6
  angle = (hour_angle - minute_angle).abs
  angle = 360 - angle if angle > 180
  angle *= Math::PI / 180
end

p hand_angle (Time.parse('00:00:00'))