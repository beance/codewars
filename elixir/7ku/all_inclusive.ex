defmodule Allinclusive do
  def contain_all_rots("", _arr), do: true

  def contain_all_rots(strng, arr) do
    count =
      arr
      |> Enum.filter(fn x ->
        Regex.scan(~r{["#{strng}"]}, x) |> Enum.count() == String.length(strng)
      end)
      |> Enum.count()

    cond do
      count == String.length(strng) -> true
      count == String.length(strng) / 2 -> true
      count -> false
    end
  end
end
