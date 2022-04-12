defmodule SmallSummer do
  def sum_two_smallest_numbers(numbers) do
    [one | tl] = Enum.sort(numbers, :asc)
    one + List.first(tl)
  end
end
