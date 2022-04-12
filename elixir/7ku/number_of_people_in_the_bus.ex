defmodule Bus do
  def number(stops) do
    stops
    |> Enum.reduce(0, fn {x, y}, acc -> acc + x - y end)
  end
end
