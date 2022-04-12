defmodule FakeBinary do
  def generate(str) do
    String.graphemes(str)
    |> Enum.map(&if(&1 >= "5", do: 1, else: 0))
    |> Enum.join()
  end
end
