defmodule Solution do
  import Integer

  def is_very_even(number) do
    case digits_count(number) do
      1 -> Integer.is_even(number)
      _ -> is_very_even(number |> Integer.digits() |> Enum.sum())
    end
  end

  def digits_count(x) do
    x |> Integer.digits() |> length
  end
end
