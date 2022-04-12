defmodule MyLanguages do
  def my_languages(results) do
    results
    |> Enum.filter(fn {_x, y} -> y >= 60 end)
    |> Enum.sort_by(fn {_x, y} -> y end, :desc)
    |> Enum.map(fn {x, _y} -> x end)
  end
end
