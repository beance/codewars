defmodule FillTheDrive do
  def save(sizes, hd) do
    sizes
    |> Enum.scan(0, &(&1 + &2))
    |> Enum.map(&if &1 <= hd, do: &1)
    |> Enum.reject(&is_nil(&1))
    |> Enum.count()
  end
end
