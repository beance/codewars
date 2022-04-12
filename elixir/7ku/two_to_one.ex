defmodule TwoToOne do
  def longest(a, b) do
    (a <> b)
    |> String.graphemes()
    |> Enum.uniq()
    |> Enum.sort()
    |> Enum.join()
  end
end
