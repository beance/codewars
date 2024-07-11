# frozen_string_literal: true

# Log without dates
# https://www.codewars.com/kata/64cac86333ab6a14f70c6fb6/train/ruby
#

def check_logs(log)
  log.slice_when(&:>=).count
end

p check_logs ['12:00:00', '23:59:59', '00:00:00']
p check_logs ['12:00:00', '12:00:00', '00:00:00']
