# Two Sum
# https://www.codewars.com/kata/52c31f8e6605bcc646000082
defmodule TwoSum do
  @spec two_sum([integer()], integer()) :: {integer(), integer()}
  def two_sum(numbers, target) do
    for {x, y} <- Enum.with_index(numbers), {a, b} <- Enum.reverse(Enum.with_index(numbers)) do
      if x + a == target and y != b, do: {y, b}
    end
    |> Enum.reject(&is_nil/1)
    |> List.first()
  end
end
