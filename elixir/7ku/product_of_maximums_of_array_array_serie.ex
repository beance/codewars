defmodule MaxProduct do
  def max_product(arr, size) do
    arr
    |> Enum.sort(:desc)
    |> Enum.take(size)
    |> Enum.reduce(fn x, acc -> acc * x end)
  end
end
