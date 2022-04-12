defmodule SplitTheBill do
  def split_the_bill(group) do
    group
    |> Map.to_list()
    |> Enum.into(%{}, fn {x, y} ->
      {x, Float.round(y - (Map.values(group) |> Enum.sum()) / Map.size(group), 2)}
    end)
  end
end
