# frozen_string_literal: true

# https://www.codewars.com/kata/57024825005264fe9200057d/train/ruby

require 'time'

def sort_time(time_periods)
  sorted_periods = time_periods.sort_by do |period|
    [Time.parse(period[0], Time.parse(period[1]))]
  end
  final_sorted_periods = []
  final_sorted_periods << sorted_periods.shift

  while sorted_periods.any?
    last_end_time = Time.parse(final_sorted_periods[-1][1])

    next_period = sorted_periods.find do |period|
      Time.parse(period[0]) >= last_end_time
    end

    if next_period
      final_sorted_periods << next_period
      sorted_periods.delete(next_period)
    else
      final_sorted_periods << sorted_periods.shift
    end
  end

  final_sorted_periods
end

# Example test case
time_periods = [["17:21", "21:18"], ["12:58", "12:58"], ["12:56", "06:32"], ["12:58", "07:09"], ["23:47", "22:55"], ["09:00", "20:33"], ["06:30", "22:50"], ["02:23", "11:03"], ["23:43", "06:28"], ["01:22", "08:00"], ["20:43", "08:51"], ["19:58", "09:19"], ["19:58", "00:51"], ["20:41", "16:49"], ["03:18", "23:43"], ["11:03", "10:49"], ["01:46", "16:52"], ["04:16", "21:00"], ["19:01", "05:36"]]

p sort_time(time_periods) == [["01:22", "08:00"], ["09:00", "20:33"], ["20:41", "16:49"], ["17:21", "21:18"], ["23:43", "06:28"], ["06:30", "22:50"], ["23:47", "22:55"], ["01:46", "16:52"], ["19:01", "05:36"], ["11:03", "10:49"], ["12:56", "06:32"], ["12:58", "12:58"], ["12:58", "07:09"], ["19:58", "09:19"], ["19:58", "00:51"], ["02:23", "11:03"], ["20:43", "08:51"], ["03:18", "23:43"], ["04:16", "21:00"]]

