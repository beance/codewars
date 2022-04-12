defmodule ExtraPerfect do
  def extra_perfect(n) do
    1..n
    |> Enum.map(&if rem(&1, 2) == 1, do: &1)
    |> Enum.reject(&is_nil/1)
  end
end
