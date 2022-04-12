defmodule Kata do
  import Bitwise

  def reflections(max_x, max_y) do
    (max_x &&& -max_x) == (max_y &&& -max_y)
  end
end
