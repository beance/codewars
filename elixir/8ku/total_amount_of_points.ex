defmodule TotalPoints do
  def points(games) do
    games
    |> Enum.map(&String.split(&1, ":"))
    |> Enum.map(fn arr ->
      x = List.first(arr)
      y = List.last(arr)

      cond do
        x > y -> 3
        x < y -> 0
        x == y -> 1
      end
    end)
    |> Enum.sum()
  end
end
