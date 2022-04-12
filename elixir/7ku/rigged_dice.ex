defmodule DiceRoller do
  def throw_rigged do
    if Enum.random(1..100) / 100 <= 0.22, do: 6, else: Enum.random(1..5)
  end
end
