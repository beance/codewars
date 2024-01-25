# frozen_string_literal: true

# Codewars Leaderboard Climber
# https://www.codewars.com/kata/57d28215264276ea010002cf/train/ruby

def leader_b(username, user_score, your_score)
  if your_score > user_score
    'Winning!'
  elsif your_score == user_score
    'Only need one!'
  else
    difference = user_score - your_score
    beta_kata = difference / 3
    kata = (difference % 3)

    total_kata = beta_kata + kata
    result = "To beat #{username}'s score, I must complete #{beta_kata} Beta kata and #{kata} 8kyu kata."

    result += ' Dammit!' if total_kata > 1000

    result
  end
end

p leader_b('g964', 36_097, 20_000)
p leader_b('webtechalex', 884, 900)
