defmodule Solution do
  def solve(l) do
    l
    |> Enum.uniq()
    |> Enum.sum()
  end
end
