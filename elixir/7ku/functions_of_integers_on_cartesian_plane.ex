defmodule Funcij do
  def sumin(n) do
    div(n * (n + 1) * (2 * n + 1), 6)
  end

  def sumax(n) do
    n * n * n - sumin(n - 1)
  end

  def sumsum(n) do
    sumax(n) + sumin(n)
  end
end
