defmodule SumOfOdd do
  def row_sum_odd_numbers(n) do
    min = n * (n - 1) + 1
    max = (n + 1) * n + 1 - 2

    Enum.take_every(min..max, 2) |> Enum.sum()
  end
end
