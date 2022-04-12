defmodule Dinglemouse do
  @moduledoc false

  def human_years_cat_years_dog_years(human_years) do
    {human_years, find_years(human_years, 4), find_years(human_years, 5)}
  end

  def find_years(human_years, y) do
    Enum.map(1..human_years, fn x ->
      case x do
        1 -> 15
        2 -> 9
        _ -> y
      end
    end)
    |> Enum.sum()
  end
end
