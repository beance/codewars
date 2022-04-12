defmodule Codewars.WeirdString do
  def triple_trouble(one, two, three) do
    0..(String.length(one) - 1)
    |> Enum.map(&(String.at(one, &1) <> String.at(two, &1) <> String.at(three, &1)))
    |> Enum.join()
  end
end
