defmodule OnlyOdd do
  def odds(nums), do: Enum.reject(nums, &(rem(&1, 2) == 0))
end
