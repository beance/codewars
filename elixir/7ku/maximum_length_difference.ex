defmodule MaxDiff do
  def mxdiflg([], _a2), do: -1
  def mxdiflg(_a1, []), do: -1

  def mxdiflg(a1, a2) do
    for x <- a1, y <- a2 do
      abs(String.length(x) - String.length(y))
    end
    |> Enum.max()
  end
end
