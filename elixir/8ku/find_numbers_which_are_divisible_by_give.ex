defmodule Filtron do
  def divisible_by(numbers, divisor), do: Enum.filter(numbers, &(rem(&1, divisor) == 0))
end
