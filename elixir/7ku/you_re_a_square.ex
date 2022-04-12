defmodule Math do
  def square?(n) when n < 0, do: false
  def square?(n), do: :math.pow(trunc(:math.sqrt(n)), 2) == n
end
