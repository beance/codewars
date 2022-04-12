defmodule Kata do
  def stack_height_2d(0), do: 0

  def stack_height_2d(layers) do
    (layers - 1) * :math.sqrt(3) / 2 + 1
  end
end
