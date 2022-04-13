# PI approximation
# https://www.codewars.com/kata/550527b108b86f700000073f
defmodule Piapprox do
  def iter_pi(epsilon) do
    Stream.iterate(1, fn x -> x + 1 end)
    |> Enum.reduce_while(4, fn x, acc ->
      if abs(:math.pi() - acc) > epsilon do
        if rem(x, 2) == 0 do
          {:cont, acc + 1 / (x * 2 + 1) * 4}
        else
          {:cont, acc - 1 / (x * 2 + 1) * 4}
        end
      else
        {:halt, [x, trunc(acc * 1.0e10) / 1.0e10]}
      end
    end)
  end
end
