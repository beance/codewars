defmodule NextHappyYear do
  def next_happy_year(year) do
    Stream.iterate(year + 1, &(&1 + 1))
    |> Stream.reject(&(&1 |> Integer.digits() |> Enum.uniq() |> Enum.count() < 4))
    |> Enum.take(1)
    |> List.first()
  end
end
