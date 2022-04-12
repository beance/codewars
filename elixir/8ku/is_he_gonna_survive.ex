defmodule Hero do
  def survive(bullets, dragons), do: bullets / (dragons * 2) >= 1
end
