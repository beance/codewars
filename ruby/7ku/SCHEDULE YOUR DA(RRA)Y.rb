# frozen_string_literal: true

# SCHEDULE YOUR DA(RRA)Y
# https://www.codewars.com/kata/581de9a5b7bad5d369000150/train/ruby

def day_plan(hours, tasks, duration)
  return [] if tasks.zero?
  return "You\'re not sleeping tonight!" if tasks * duration > hours * 60

  time_break = tasks > 1 ? (((hours * 60).to_f - (tasks * duration)) / (tasks - 1)).round : 0
  [*0...((tasks * 2) - 1)].map { |i| i.even? ? duration : time_break }
end

# p day_plan(2, 0, 60)
# p day_plan(3, 5, 60)
# p day_plan(8, 5, 30)
p day_plan(2, 1, 60)
