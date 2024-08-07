# frozen_string_literal: true

# PatternCraft - Visitor
# https://www.codewars.com/kata/5682e646d5eddc1e21000017/train/ruby
class Marine
  attr_accessor :health

  def initialize
    @health = 100
  end

  def accept(visitor)
    visitor.visit_light(self)
  end
end

class Marauder
  attr_accessor :health

  def initialize
    @health = 125
  end

  def accept(visitor)
    visitor.visit_armored(self)
  end
end

class TankBullet
  def visit_light(unit)
    unit.health -= 21
  end

  def visit_armored(unit)
    unit.health -= 32
  end
end
