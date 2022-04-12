defmodule MaxTriSum do
  def max_tri_sum(nums) do
    nums
    |> Enum.sort(:desc)
    |> Enum.uniq()
    |> Enum.take(3)
    |> Enum.sum()
  end
end
