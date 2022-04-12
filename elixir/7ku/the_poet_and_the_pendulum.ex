defmodule Pendulum do
  def pendulum(values) do
    sorted =
      values
      |> Enum.sort()
      |> Enum.with_index()

    arr1 =
      sorted
      |> Enum.map(fn {x, y} ->
        if rem(y, 2) == 0, do: x
      end)
      |> Enum.reject(&is_nil(&1))

    arr2 =
      sorted
      |> Enum.map(fn {x, y} ->
        if rem(y, 2) != 0, do: x
      end)
      |> Enum.reject(&is_nil(&1))

    arr1
    |> Enum.reverse()
    |> Enum.concat(arr2)
  end
end
