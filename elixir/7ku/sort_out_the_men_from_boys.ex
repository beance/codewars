defmodule MenFromBoys do
  import Integer

  def men_from_boys(values) do
    left = values |> Enum.reject(&is_odd(&1)) |> Enum.sort(:asc) |> Enum.uniq()
    right = values |> Enum.reject(&is_even(&1)) |> Enum.sort(:desc) |> Enum.uniq()
    left ++ right
  end
end
