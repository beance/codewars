defmodule OneZeroSequencer do
  def stringy(size) do
    1..size
    |> Enum.map(&if rem(&1, 2) == 0, do: 0, else: 1)
    |> Enum.join()
  end
end
