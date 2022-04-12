defmodule Kata do
  def fusc(0), do: 0
  def fusc(1), do: 1
  def fusc(n) when rem(n, 2) == 0, do: fusc(floor(n / 2))
  def fusc(n), do: fusc(floor((n - 1) / 2)) + fusc(floor((n + 1) / 2))
end
