defmodule Speedcontrol do
  def gps(_s, []), do: 0
  def gps(_s, [x]), do: 0

  def gps(s, x) do
    x
    |> Enum.chunk(2, 1)
    |> Enum.map(&(3600 * (List.last(&1) - List.first(&1)) / s))
    |> Enum.max()
  end
end
