defmodule MissingNo do
  def missing_no(nums) do
    nums = Enum.sort(nums)
    nums
    |> Enum.map(&if Enum.at(nums, &1) <= &1, do: &1 + 1)
    |> Enum.reject(&is_nil/1)
    |> List.last()
  end
end
