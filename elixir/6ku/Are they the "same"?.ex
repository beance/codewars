# Are they the "same"?
# https://www.codewars.com/kata/550498447451fbbd7600041c
defmodule Aretheythesame do
  @spec comp([number], [number]) :: boolean
  def comp(a, b) do
    a |> Enum.map(&(&1 * &1)) |> Enum.sort() == b |> Enum.sort()
  end
end
