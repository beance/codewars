# frozen_string_literal: true

# How many points did the teams from Los Angeles score?
# https://www.codewars.com/kata/580559b17ab3396c58000abb/train/ruby

def get_los_angeles_points(results)
  results.select { |v| v[0].match(/^Los Angeles [A-Z][a-z]*$/) }.sum(0) { |v| v[1].to_i }
end

basketball_results = [
  ['Golden State Warriors', '559:503'],
  ['Memphis Grizzlies', '550:511'],
  ['Portland Trail Blazers', '527:520'],
  ['Houston Rockets', '494:458'],
  ['San Antonio Spurs', '469:460'],
  ['Phoenix Suns', '523:522'],
  ['Minnesota Timberwolves', '495:494'],
  ['Utah Jazz', '399:402'],
  ['Sacramento Kings', '420:431'],
  ['Denver Nuggets', '646:658'],
  ['Los Angeles Clippers', '382:422'],
  ['Dallas Mavericks', '492:513'],
  ['Los Angeles Lakers', '641:637'],
  ['Oklahoma City Thunder', '315:318'],
  ['New Orleans Pelicans', '433:454']
]
mexican_leaguers = [
  ['Lost Angeles', '559:503'],
  ['Los Angels', '550:511'],
  ['LosAngeles', '527:520'],
  ['Los Angeles Atomic Burritos', '494:458'],
  ['Los Angeles', '469:460'],
  ['Los Angeles ', '523:522'],
  ['Los Angeles 666', '495:494'],
  ['Angeles Los', '399:402'],
  ['Los Angeles L0s3rz', '420:431'],
  ['Original Los Angeles', '646:658'],
  ['Original Los Angeles Guys', '382:422'],
  ['Daring Dudes from Los Angeles', '492:513'],
  ['Los Guardianos Angeles', '641:637'],
  ['Los angeles', '315:318'],
  ['losAngeles', '433:454']
]

p get_los_angeles_points(basketball_results) # 1023
