defmodule VowelCount do
  @vowels ["a", "e", "i", "o", "u"]
  def get_count(str) do
    String.graphemes(str)
    |> Enum.filter(&(&1 in @vowels))
    |> Enum.count()
  end
end
