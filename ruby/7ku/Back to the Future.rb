# frozen_string_literal: true

# Back to the Future?
# https://www.codewars.com/kata/5964e8fcfc9cf7749000005e/train/ruby

def back_to_the_future(inbound)
  aligned_months = {
    "January" => {outbound: "October", max_days: 31},
    "April" => {outbound: "July", max_days: 31},
    "September" => {outbound: "December", max_days: 31},
    "February" => {outbound: "March", max_days: 31},
    "March" => {outbound: "November", max_days: 30}
  }

  inbound = inbound.split(" ")

  match = aligned_months[inbound[2]]

  if match && inbound[1].to_i <= match[:max_days]
    return "I'm leaving here on #{inbound[0]} #{inbound[1]} #{match[:outbound]}!"
  end

  "Doc, I can't get back to the future!"
end

# Examples
puts back_to_the_future("Monday 1 January") # "I'm leaving here on Monday 1 October!"
puts back_to_the_future("Wednesday 5 February") # "I'm leaving here on Wednesday 5 March!"
puts back_to_the_future("Sunday 12 April") # "I'm leaving here on Sunday 12 July!"
puts back_to_the_future("Tuesday 15 December") # "I'm leaving here on Tuesday 15 September!"

p back_to_the_future("Monday 3 January")
