defmodule TidyNumber do
  def tidy_number(n) do
    n = n |> Integer.digits()

    0..(length(n) - 1)
    |> Enum.map(fn x ->
      if Enum.at(n, x) <= Enum.at(n, x + 1), do: true, else: false
    end)
    |> Enum.sort()
    |> List.first()
  end
end
