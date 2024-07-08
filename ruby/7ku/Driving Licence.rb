# frozen_string_literal: true
# Driving Licence
# https://www.codewars.com/kata/586a1af1c66d18ad81000134/train/ruby

require 'date'

def driver(data)
  first_name, middle_name, sure_name, date, gender = data.map(&:upcase)
  str = ""
  (sure_name.length > 5) ? str += sure_name[0...5] : str += sure_name + ("9" * (5 - sure_name.length))
  date = Date.parse(date)
  str += date.year.to_s[2]
  (gender == "M") ? str += date.strftime("%m") : str += (date.month + 50).to_s
  str += date.strftime("%d")
  str += date.year.to_s[3]
  str += first_name[0] + (middle_name[0].nil? ? "9" : middle_name[0])
  str += "9AA"
end

data = ["John", "James", "Smith", "01-Jan-2000", "M"]
data = ["Andrew", "Robert", "Lee", "02-September-1981", "M"]
p driver(data)