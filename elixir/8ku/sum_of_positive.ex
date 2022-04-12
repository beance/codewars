defmodule Solution do
  def positive_sum(arr) do
    Enum.sum(Enum.filter(arr, &(&1 > 0)))
  end
end
