defmodule Kata do
  def find_short(s) do
    Enum.sort_by(String.split(s), &String.length/1)
    |> List.first()
    |> String.length()
  end
end
