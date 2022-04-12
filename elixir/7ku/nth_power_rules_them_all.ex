defmodule NthPower do
  def modified_sum(a, n) do
    trunc(Enum.reduce(a, 0, &(:math.pow(&1, n) + &2)) - Enum.sum(a))
  end
end
