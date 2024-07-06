# frozen_string_literal: true
# Correct the date-string
# https://www.codewars.com/kata/5787628de55533d8ce000b84/train/ruby

require 'date'


def date_correct(date)
  return '' if date == ''
  return unless date.to_s[/^\d\d\.\d\d\.\d{4}$/]
  day, month, year = date.split('.').map &:to_i
  ((Date.new(year) >> month - 1) + day - 1).strftime "%d.%m.%Y"
end



p date_correct("99.11.2010")