# frozen_string_literal: true

# Competitive eating scoreboard
# https://www.codewars.com/kata/571d2e9eeed4a150d30011e7/train/ruby

POINTS = { 'chickenwings' => 5, 'hamburgers' => 3, 'hotdogs' => 2 }

def scoreboard(who_ate_what)
  who_ate_what.map do |i|
    { 'name' => i['name'],
      'score' => i.sum { |k, _v| POINTS.has_key?(k) ? POINTS[k] * i[k] : 0 } }
  end.sort_by { |k| [-k['score'], k['name']] }
end

p scoreboard([{ 'name' => 'Sarah Connor', 'chickenwings' => 5, 'hotdogs' => 7 }, { 'name' => 'Dr. Peter Silberman' },
              { 'name' => 'John Connor', 'chickenwings' => 4, 'hotdogs' => 10 }])

# [{"name"=>"John Connor", "score"=>40}, {"name"=>"Sarah Connor", "score"=>39}, {"name"=>"Dr. Peter Silberman", "score"=>0}]
