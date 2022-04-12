defmodule Kata do
  def consecutive_ducks(n) do
    floor(:math.log2(n)) != :math.log2(n)
  end
end
