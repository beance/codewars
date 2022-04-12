defmodule Anagram do
  def anagram?(a, b) do
    String.upcase(b) |> String.graphemes() |> Enum.sort() ==
      String.upcase(a) |> String.graphemes() |> Enum.sort()
  end
end
