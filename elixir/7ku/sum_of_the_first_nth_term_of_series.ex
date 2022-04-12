defmodule Series do
  def sum(0), do: "0.00"

  def sum(n) do
    Enum.take_every(1..(n * 3), 3)
    |> Enum.reduce(0, fn x, acc -> 1 / x + acc end)
    |> Float.to_string(decimals: 2)
  end
end
