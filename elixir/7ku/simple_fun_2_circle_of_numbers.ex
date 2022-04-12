defmodule CircleNumbers do
  def circle_of_numbers(n, first_number) do
    case first_number do
      index when index < n / 2 ->
        index = Enum.find_index(0..(div(n, 2) - 1), fn x -> x == first_number end)
        Enum.at(div(n, 2)..(n - 1), index)

      _ ->
        index = Enum.find_index(div(n, 2)..(n - 1), fn x -> x == first_number end)
        Enum.at(0..(div(n, 2) - 1), index)
    end
  end
end
