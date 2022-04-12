defmodule Kata do
  def switcher(x) do
    string = "zyxwvutsrqponmlkjihgfedcba!? " |> String.graphemes()

    x
    |> Enum.map(fn x ->
      Enum.at(string, String.to_integer(x) - 1)
    end)
    |> Enum.join()
  end
end
