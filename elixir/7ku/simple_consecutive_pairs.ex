defmodule Kata do
  def pairs(ls) do
    ls
    |> Enum.chunk(2)
    |> Enum.map(&Enum.sort/1)
    |> Enum.map(&if List.first(&1) + 1 == List.last(&1), do: 1, else: 0)
    |> Enum.sum
  end
end
