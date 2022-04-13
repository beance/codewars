# Find The Parity Outlier
# https://www.codewars.com/kata/5526fc09a1bbd946250002dc
defmodule Kata do
  def find_outlier(integers) do
    {x, y} =
      integers
      |> Enum.group_by(&(rem(&1, 2) == 0))
      |> Enum.reject(fn {x, y} -> length(y) > 1 end)
      |> Enum.unzip()

    y |> List.flatten() |> Enum.at(0)
  end
end
