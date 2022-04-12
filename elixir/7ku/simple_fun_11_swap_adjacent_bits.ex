defmodule Kata do
  import Integer

  def swap_adjacent_bits(n) do
    digit = Integer.digits(n, 2)
    digit = if Integer.is_odd(length(digit)), do: [0] ++ digit, else: digit

    digit
    |> Enum.chunk_every(2)
    |> Enum.map(fn [x, y] ->
      [y, x]
    end)
    |> List.flatten()
    |> Integer.undigits(2)
  end
end
