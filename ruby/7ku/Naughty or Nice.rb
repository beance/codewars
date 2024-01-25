# frozen_string_literal: true

# Naughty or Nice?
# https://www.codewars.com/kata/585eaef9851516fcae00004d/train/ruby

def what_list_am_i_on(actions)
  arr = actions.map do |i|
    case i[0]
    when 'b', 'f', 'k'
      'naughty'
    when 'g', 's', 'n'
      'nice'
    end
  end.compact.group_by(&:itself).map { |w, ws| [w, ws.length] }.sort_by { |_k, v| -v }.to_h
  arr.values[0] == arr.values[1] ? 'naughty' : arr.keys[0]
end

# bad_actions = ["broke someone's window", "fought over a toaster", "killed a bug"]
# good_actions = ["got someone a new car", "saved a man from drowning", "never got into a fight"]
actions = ['got someone a new car', "broke someone's window"]
# p what_list_am_i_on(bad_actions) # "naughty"
# p what_list_am_i_on(good_actions) # "nice"
p what_list_am_i_on(actions) # "naughty"
