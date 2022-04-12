defmodule Champions do
  def count_wins(winner_list, country), do: winner_list |> Enum.count(&(&1.country == country))
end
