# Roman Numerals Decoder
# https://www.codewars.com/kata/51b6249c4612257ac0000005
defmodule Solution do
  @digit %{"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  def decode(roman) do
    roman = roman |> String.graphemes()
    roman
    |> Enum.map(&@digit[&1])
    |> Enum.with_index()
    |> Enum.reduce(0, fn {x, y}, acc ->
      if Enum.at(roman, y + 1) != nil and @digit[Enum.at(roman, y + 1)] > x,
        do: acc - x,
        else: acc + x
    end)
  end
end
