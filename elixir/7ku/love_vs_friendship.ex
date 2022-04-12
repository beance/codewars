defmodule Kata do
  def words_to_marks(s) do
    s
    |> String.graphemes()
    |> Enum.map(fn x ->
        String.to_charlist(x) |> Enum.reduce(0, &(&1 + &2 - 96))
    end)
    |> Enum.sum
  end
end
