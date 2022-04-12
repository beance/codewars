defmodule Kata do
  def strong(n) do
    Integer.digits(n)
    |> Enum.reduce(0, fn x, acc -> acc + factorial(x) end)
    |> case do
      value when value == n -> "STRONG!!!!"
      _ -> "Not Strong !!"
    end
  end

  def factorial(n) do
    if n > 1, do: n * factorial(n - 1), else: 1
  end
end
