defmodule Codewars.StringUtils do
  def alter_case(str) do
    str
    |> String.graphemes()
    |> Enum.map(fn x ->
      cond do
        x == String.upcase(x) -> String.downcase(x)
        x == String.downcase(x) -> String.upcase(x)
      end
    end)
    |> Enum.join()
  end
end
