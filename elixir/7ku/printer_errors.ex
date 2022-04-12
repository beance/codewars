defmodule Printererror do
  def printer_error(s), do: "#{count_errors(s)}/#{String.length(s)}"

  def count_errors(s) do
    s
    |> String.graphemes()
    |> Enum.filter(fn x -> x > "m" end)
    |> Enum.count()
  end
end
