efmodule RowWeights do
  import Integer

  def row_weights(arr) do
    {left(arr), right(arr)}
  end

  def left(arr) do
    0..(length(arr) - 1)
    |> Enum.map(fn x ->
      if Integer.is_even(x), do: Enum.at(arr, x), else: 0
    end)
    |> Enum.sum()
  end

  def right(arr) do
    0..(length(arr) - 1)
    |> Enum.map(fn x ->
      if Integer.is_odd(x), do: Enum.at(arr, x), else: 0
    end)
    |> Enum.sum()
  end
end
