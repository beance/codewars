defmodule Kata do
  def sum_digits(number) do
    number
    |> Integer.digits()
    |> Enum.sum()
    |> abs()
  end
end
