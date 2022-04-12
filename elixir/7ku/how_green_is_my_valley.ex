defmodule Makevalley do
  import Integer
  def make_valley([]), do: []

  def make_valley(a) when is_list(a) do
    new =
      a
      |> Enum.sort(:desc)
      |> Enum.map(&Integer.to_string/1)
      |> Enum.chunk_every(2, 2)

    left =
      new
      |> Enum.map(fn x ->
        if Enum.count(x) > 1, do: List.first(x)
      end)
      |> Enum.reject(&is_nil/1)
      |> Enum.map(&String.to_integer/1)

    center =
      new
      |> Enum.filter(&(Enum.count(&1) == 1))
      |> List.first()

    right =
      new
      |> Enum.map(fn x ->
        if Enum.count(x) > 1, do: List.last(x)
      end)
      |> Enum.reject(&is_nil/1)
      |> Enum.map(&String.to_integer/1)
      |> Enum.sort()

    if is_nil(center) do
      List.flatten(left, right)
    else
      List.flatten(left, Enum.map(center, &String.to_integer/1))
      |> List.flatten(right)
    end
  end
end
