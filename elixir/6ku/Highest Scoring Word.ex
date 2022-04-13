# Highest Scoring Word
# https://www.codewars.com/kata/57eb8fcdf670e99d9b000272

defmodule Kata do
  def high(str) do
    {_, word} =
      str
      |> String.split(" ")
      |> Enum.group_by(fn x -> String.to_charlist(x) |> Enum.reduce(0, &(&1 + &2 - 96)) end)
      |> Enum.max()

    List.first(word)
  end
end
