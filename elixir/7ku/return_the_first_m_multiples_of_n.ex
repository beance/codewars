defmodule Multiples do
  def multiples(m, n) do
    1..m |> Enum.map(&(n * &1))
  end
end
