defmodule Easyline do
  def easyline(n) when n < 1, do: 0
  def easyline(0), do: 1

  def easyline(n) do
    row = (n - 1)..(2 * n - 1)

    row
    |> Enum.reduce(0, fn x, acc ->
      calc_combination_per_row_item(x, Enum.find_index(row, fn i -> i == x end)) + acc
    end)
  end

  def calc_combination_per_row_item(row, i) do
    div(factorial(row), factorial(i) * factorial(row - i))
  end

  defp factorial(0), do: 1

  defp factorial(n) when n > 0 do
    n * factorial(n - 1)
  end
end
