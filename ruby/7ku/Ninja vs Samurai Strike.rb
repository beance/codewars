# frozen_string_literal: true

# Ninja vs Samurai: Strike
# https://www.codewars.com/kata/517b0f33cd023d848d000001/train/ruby

class Warrior
  attr_accessor :name, :health

  def initialize(name, healt = 100)
    @name = name
    @health = healt
  end

  def strike(enemy, swings)
    enemy.health = [0, enemy.health - (swings * 10)].max
  end
end
