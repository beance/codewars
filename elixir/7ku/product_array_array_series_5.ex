defmodule ProductArray do
  def product_array(nums) do
    nums
    |> Enum.map(fn x ->
      Enum.reduce(List.delete(nums, x), fn x, acc -> x * acc end)
    end)
  end
end
