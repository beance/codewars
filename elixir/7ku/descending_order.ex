defmodule Kata do
  def descending_order(n) do
    n
    |> Integer.digits()
    |> Enum.sort(:desc)
    |> Enum.join()
    |> String.to_integer()
  end
end
