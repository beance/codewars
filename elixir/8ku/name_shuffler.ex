defmodule Messy do
  def name_shuffler(str) do
    str
    |> String.split()
    |> Enum.reverse()
    |> Enum.join(" ")
  end
end
