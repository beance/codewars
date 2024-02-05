# frozen_string_literal: true

# Player Contact Manager
# https://www.codewars.com/kata/5b203de891c7469b520000b4/train/ruby

def player_manager(players)
  return [] if players.nil? || players.empty?
  arr = []
  p = players.split(",")
  (0...p.length).step(2) { |i| arr << {player: p[i].strip, contact: p[i + 1].to_i} }
  arr
end

def player_manager(players)
  return [] if players.nil? || players.empty?
  players.split(", ").each_slice(2).map { |(p, c)| {player: p, contact: c.to_i} }
end

p player_manager("John Doe, 8167238327, Jane Doe, 8163723827")
# [{player: "John Doe", contact: 8167238327}, {player: "Jane Doe", contact: 8163723827}]
