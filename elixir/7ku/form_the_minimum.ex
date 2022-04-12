defmodule Solution do
  def minValue(numbers) do
    numbers
    |> Enum.uniq()
    |> Enum.sort()
    |> Integer.undigits()
  end
end
