# frozen_string_literal: true

# https://www.codewars.com/kata/53988ee02c2414dbad000baa/train/ruby
def to_pretty(time)
  seconds = (Time.now - time).to_i
  case seconds
  when 0
    'just now'
  when 1..59
    seconds == 1 ? 'a second ago' : "#{seconds} seconds ago"
  when 60..3599
    minutes = seconds / 60
    minutes == 1 ? 'a minute ago' : "#{minutes} minutes ago"
  when 3600..86_399
    hours = seconds / 3600
    hours == 1 ? 'an hour ago' : "#{hours} hours ago"
  when 86_400..604_799
    days = seconds / 86_400
    days == 1 ? 'a day ago' : "#{days} days ago"
  else
    weeks = seconds / 604_800
    weeks == 1 ? 'a week ago' : "#{weeks} weeks ago"
  end
end
