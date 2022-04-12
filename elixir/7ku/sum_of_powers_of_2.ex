defmodule Kata do
  def powers(n) do
    n
    |> Integer.digits(2)
    |> Enum.reverse()
    |> Enum.with_index()
    |> Enum.map(fn {x, y} ->
      if x == 0, do: 0, else: trunc(:math.pow(2, y))
    end)
    |> Enum.filter(&(&1 != 0))
  end
end
