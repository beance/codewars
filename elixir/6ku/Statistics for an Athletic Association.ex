# Statistics for an Athletic Association
# https://www.codewars.com/kata/55b3425df71c1201a800009c
defmodule AthleticAssociation do
  def stat(""), do: ""

  def stat(string) do
    ts =
      string
      |> String.split(", ")
      |> Enum.map(&String.split(&1, "|"))
      |> Enum.map(&Enum.map(&1, fn x -> String.to_integer(x) end))
      |> Enum.map(fn [h, m, s] -> h * 60 * 60 + m * 60 + s end)
      |> Enum.sort()

    "Range: #{format(range(ts))} Average: #{format(avg(ts))} Median: #{format(median(ts))}"
  end

  defp range(ts), do: Enum.min_max(ts) |> (fn {min, max} -> max - min end).()

  defp avg(ts), do: Enum.sum(ts) |> div(Enum.count(ts))

  defp median(ts), do: ts |> length() |> div_rem(2) |> median(ts)
  defp median({half, 0}, ts), do: avg(Enum.slice(ts, half - 1, 2))
  defp median({half, 1}, ts), do: Enum.at(ts, half)

  defp div_rem(dividend, divisor), do: {div(dividend, divisor), rem(dividend, divisor)}

  defp format(t) do
    {h, x} = div_rem(t, 60 * 60)
    {m, s} = div_rem(x, 60)

    [h, m, s]
    |> Enum.map(&Integer.to_string/1)
    |> Enum.map_join("|", &String.pad_leading(&1, 2, "0"))
  end
end
