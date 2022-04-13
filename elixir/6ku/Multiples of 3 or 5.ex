# Multiples of 3 or 5
# https://www.codewars.com/kata/514b92a657cdc65150000006
defmodule Challenge do
  def solution(number) when number < 0, do: 0

  def solution(number) do
    Enum.filter(1..(number - 1), fn x ->
      rem(x, 3) == 0 or rem(x, 5) == 0
    end)
    |> Enum.sum()
  end
end
