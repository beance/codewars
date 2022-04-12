defmodule Kata do
  def f(x, y, z) do
    x * (y + 1) * (z + 1) + y * (z + 1) * (x + 1) + z * (x + 1) * (y + 1)
  end
end
