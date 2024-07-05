# Duck Duck Goose

def duck_duck_goose(players, goose)
  players[goose % players.size - 1].name
end
