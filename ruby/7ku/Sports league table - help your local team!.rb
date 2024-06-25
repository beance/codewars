# frozen_string_literal: true

# Sports league table - help your local team!
# https://www.codewars.com/kata/566fd169d39cf89e1e000044/train/ruby

$league_table = [['CodeWarriors', 0], ['Founders&Coders', 0], ['Quorans', 0], ['CodeCademists', 0],
                 ['Eden of the East', 0], ['Max Headroom', 0], ['FSociety', 0], ['Public Security Section 9', 0]]

def league_calculate(team1, team2, result)
  res = result == 'draw' ? [[team1, 1], [team2, 1]] : [[team1, 3], [team2, 0]]
  $league_table.each_with_index do |team, index|
    res.each do |t|
      $league_table[index][1] += t[1] if t[0] == team[0]
    end
  end
  $league_table.sort_by! { |team, points| [-points, team] }
end

def league_calculate(team1, team2, result)
  index_team1 = $league_table.index { |team| team[0] == team1 }
  index_team2 = $league_table.index { |team| team[0] == team2 }

  case result
  when 'win'
    $league_table[index_team1][1] += 3
  when 'draw'
    $league_table[index_team1][1] += 1
    $league_table[index_team2][1] += 1
  end
  $league_table.sort_by! { |team, points| [-points, team] }
end

def league_calculate(team1, team2, result)
  case result
  when 'draw'
    $league_table.assoc(team1)[1] += 1
    $league_table.assoc(team2)[1] += 1
  when 'win'
    $league_table.assoc(team1)[1] += 3
  end

  $league_table.sort_by! { |team, points| [-points, team] }
end

p league_calculate('CodeCademists', 'CodeWarriors', 'draw') # [["teamA",4],["teamB",4],["teamC",3],["teamD",3]]
# [["CodeCademists", 1], ["CodeWarriors", 1], ["Eden of the East", 0], ["FSociety", 0], ["Founders&Coders", 0], ["Max Headroom", 0], ["Public Security Section 9", 0], ["Quorans", 0]]
