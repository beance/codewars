defmodule Kata do
  def capitalize(s) do
    left =
      0..(String.length(s) - 1)
      |> Enum.map(
        &if rem(&1, 2) == 0, do: String.capitalize(String.at(s, &1)), else: String.at(s, &1)
      )
      |> Enum.join()

    right =
      0..(String.length(s) - 1)
      |> Enum.map(
        &if rem(&1, 2) == 1, do: String.capitalize(String.at(s, &1)), else: String.at(s, &1)
      )
      |> Enum.join()

    [left, right]
  end
end
