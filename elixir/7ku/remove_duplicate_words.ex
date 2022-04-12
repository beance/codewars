defmodule RemoveDuplicateWordsKata do
  def removeDuplicateWords(text) do
    text = String.split(text)

    text
    |> Enum.with_index()
    |> Enum.filter(fn {x, y} ->
      Enum.find_index(text, &(&1 == x)) == y
    end)
    |> Enum.map(fn {x, y} -> x end)
    |> Enum.join(" ")
  end
end
