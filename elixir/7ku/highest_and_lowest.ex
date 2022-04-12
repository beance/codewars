defmodule Kata do
  def high_and_low(s) do
    String.split(s)
    |> Enum.map(&String.to_integer/1)
    |> Enum.min_max()
    |> Tuple.to_list()
    |> Enum.sort(:desc)
    |> Enum.join(" ")
  end
end
