defmodule Plural do
  def plural?(n) when n == 1, do: false
  def plural?(_n), do: true
end
