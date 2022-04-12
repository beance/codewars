defmodule Heroroot do
  def int_rac(n, guess) do
    Stream.iterate(1, &(&1 + 1))
    |> Enum.reduce_while(guess, fn x, acc ->
      new = div(acc + div(n, acc), 2)

      if abs(acc - new) < 1,
        do: {:halt, x},
        else: {:cont, new}
    end)
  end
end
