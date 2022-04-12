defmodule Codewars.EvilOdious do
  def evil?(n) do
    require Integer

    n
    |> Integer.digits(2)
    |> Enum.sum()
    |> Integer.is_even()
    |> if(do: "It's Evil!", else: "It's Odious!")
  end
end
