defmodule SquareSum do
  def square_sum([]), do: 0

  def square_sum(nums) do
    Enum.reduce(nums, 0, fn x, acc -> x * x + acc end)
  end
end
