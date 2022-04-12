defmodule Factorial do
  def factorial(n) do
    if n > 1, do: n * factorial(n - 1), else: 1
  end
end
