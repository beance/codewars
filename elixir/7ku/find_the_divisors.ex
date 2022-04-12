defmodule FindTheDivisors do
  def divisors(integer),
    do: if(is_prime(integer), do: "#{integer} is prime", else: prime(integer))

  def is_prime(x), do: 1..x |> Enum.filter(&(rem(x, &1) == 0)) |> length() == 2

  def prime(n), do: 2..(n - 1) |> Enum.filter(&(rem(n, &1) == 0))
end
