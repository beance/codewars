defmodule ArrayLeaders do
  def array_leaders(nums) do
    _leaders(nums)
  end

  defp _leaders([x]), do: if(x > 0, do: [x], else: [])

  defp _leaders([x | xs]) do
    if x > Enum.sum(xs), do: [x] ++ _leaders(xs), else: _leaders(xs)
  end
end
