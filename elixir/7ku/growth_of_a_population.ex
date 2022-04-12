defmodule Solution do
  def nb_year(p0, percent, aug, p) do
    Stream.iterate(p0, &(&1 + floor(&1 * percent / 100 + aug)))
    |> Enum.find_index(&(&1 >= p))
  end
end
