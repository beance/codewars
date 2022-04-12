defmodule Shepherd do
  def count_sheeps(sheeps) do
    sheeps
    |> Enum.filter(&(&1 == true))
    |> Enum.count()
  end
end
