defmodule Evaporator do
  @spec evaporator(number, number, number) :: number

  def evaporator(content, evap_per_day, threshold) do
    Stream.iterate(content, &(&1 - &1 / 100 * evap_per_day))
    |> Enum.take_while(&(&1 >= content / 100 * threshold))
    |> Enum.count()
  end
end
