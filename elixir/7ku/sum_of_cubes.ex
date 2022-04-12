defmodule SumCubes do
  def sum_cubes(n) do
    Enum.reduce(1..n, fn x, acc -> acc + x * x * x end)
  end
end
