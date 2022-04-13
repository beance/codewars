# Counting Duplicates
# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1

defmodule DuplicateCount do
  def count(str) do
    str =
      str
      |> String.upcase()
      |> String.graphemes()

    str
    |> Enum.reject(fn x -> if Enum.count(str, fn y -> y == x end) < 2, do: x end)
    |> Enum.uniq()
    |> Enum.count()
  end
end
