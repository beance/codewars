# Reverse or rotate?
# https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991
defmodule Revrot do
  def revrot(str, sz) when sz <= 0 or sz > byte_size(str), do: ""

  def revrot(str, sz) do
    str
    |> String.graphemes()
    |> Enum.map(&String.to_integer/1)
    |> Enum.chunk_every(sz, sz, :discard)
    |> Enum.map(fn x ->
      if rem(sum_cub(x), 2) == 0 do
        Enum.reverse(x)
      else
        [hd | tl] = x
        tl ++ [hd]
      end
    end)
    |> List.flatten()
    |> Enum.join()
  end

  def sum_cub(dig) do
    dig
    |> Enum.map(&Integer.pow(&1, 3))
    |> Enum.sum()
  end
end
