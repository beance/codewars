defmodule Collatz do
  import Integer

  def hotpo(1), do: 0
  def hotpo(n) when is_odd(n), do: 1 + hotpo(3 * n + 1)
  def hotpo(n) when is_even(n), do: 1 + hotpo(div(n, 2))
end
