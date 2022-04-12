defmodule Mumbling do
  def accum(s) do
    Enum.map(
      1..String.length(s),
      &(String.duplicate(String.at(s, &1 - 1), &1) |> String.capitalize())
    )
    |> Enum.join("-")
  end
end
