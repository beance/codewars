defmodule Grow do
  def grow(arr), do: Enum.reduce(arr, fn x, acc -> x * acc end)
end
