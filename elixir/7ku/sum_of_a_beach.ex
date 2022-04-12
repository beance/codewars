defmodule SumOfABeach do
  @word ["sand", "water", "fish", "sun"]
  def sum_of_a_beach(beach) do
    @word
    |> Enum.map(fn x ->
      Regex.split(~r{(#{x})}, String.downcase(beach), include_captures: true, trim: true)
      |> Enum.map(fn y ->
        if String.contains?(y, x), do: 1, else: 0
      end)
    end)
    |> List.flatten()
    |> Enum.sum()
  end
end
