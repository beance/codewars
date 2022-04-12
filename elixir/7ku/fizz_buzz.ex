defmodule FizzBuzz do
  def fizzbuzz(n) do
    1..n
    |> Enum.map(fn x ->
      cond do
        rem(x, 3) == 0 and rem(x, 5) == 0 -> "FizzBuzz"
        rem(x, 5) == 0 -> "Buzz"
        rem(x, 3) == 0 -> "Fizz"
        x -> x
      end
    end)
  end
end
