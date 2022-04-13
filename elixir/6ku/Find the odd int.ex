# Find the odd int
# https://www.codewars.com/kata/54da5a58ea159efa38000836
defmodule FindOdd do
  def find(list) do
    {res, _} =
      list
      |> Enum.frequencies()
      |> Enum.reject(fn {_x, y} -> rem(y, 2) == 0 end)
      |> List.first()

    res
  end
end
