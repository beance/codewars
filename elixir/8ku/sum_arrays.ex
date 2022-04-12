defmodule SumNumbers do
  def sum([]), do: 0
  def sum(numbers), do: Enum.sum(numbers)
end
