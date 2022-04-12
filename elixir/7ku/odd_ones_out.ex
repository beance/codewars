defmodule OddOnesOut do
  def odd_ones_out(nums) do
    reject_nums =
      nums
      |> Enum.map(fn x ->
        {x, Enum.count(nums, fn y -> y == x end)}
      end)
      |> Enum.uniq()
      |> Enum.reject(fn {x, y} ->
        rem(y, 2) == 0
      end)
      |> Enum.map(fn {x, y} ->
        List.duplicate(x, y)
      end)
      |> List.flatten()

    nums -- reject_nums
  end
end
