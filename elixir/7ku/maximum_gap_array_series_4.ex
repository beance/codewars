defmodule MaxGap do
  def max_gap(nums) do
    nums = nums |> Enum.sort(:desc)

    0..(length(nums) - 1)
    |> Enum.map(
      &if &1 < length(nums) - 1, do: abs(Enum.at(nums, &1) - Enum.at(nums, &1 + 1)), else: 0
    )
    |> Enum.max()
  end
end
