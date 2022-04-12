defmodule Kata do
  def add(a, b) when a == 0, do: b
  def add(a, b) when b == 0, do: a

  def add(a, b) do
    rev_a = Integer.digits(a) |> Enum.reverse()
    rev_b = Integer.digits(b) |> Enum.reverse()

    [rev_a, rev_b] =
      cond do
        length(rev_a) > length(rev_b) ->
          [rev_a, rev_b ++ List.duplicate(0, length(rev_a) - length(rev_b))]

        length(rev_a) < length(rev_b) ->
          [rev_a ++ List.duplicate(0, length(rev_b) - length(rev_a)), rev_b]

        length(rev_a) == length(rev_b) ->
          [rev_a, rev_b]
      end

    _sum(rev_a, rev_b, [])
    |> Enum.reverse()
    |> Enum.join()
    |> String.to_integer()
  end

  def _sum(x, y, arr) do
    [x | tl] = x
    [y | tly] = y

    if length(tl) > 0 do
      arr = arr ++ [x + y]
      _sum(tl, tly, arr)
    else
      arr = arr ++ [x + y]
    end
  end
end
