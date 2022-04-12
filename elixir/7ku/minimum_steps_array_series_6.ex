defmodule MinimumSteps do
  def minimum_steps(nums, value) do
    nums
    |> Enum.sort()
    |> Enum.scan(&(&1 + &2))
    |> Enum.find_index(&(&1 >= value))
  end
end
