defmodule Partlist do
  def part_list(a) do
    Enum.map(1..(Enum.count(a) - 1), fn x ->
      [Enum.take(a, x) |> Enum.join(" "), Enum.take(a, x - Enum.count(a)) |> Enum.join(" ")]
    end)
  end
end
