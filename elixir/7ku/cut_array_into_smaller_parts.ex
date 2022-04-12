defmodule CodeWars do
  def make_parts(lst, count), do: lst |> Enum.chunk_every(count)
end
