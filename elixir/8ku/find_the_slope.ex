defmodule SloppyMath do
  def slope([a, _b, c, _d]) when c - a == 0, do: "undefined"
  def slope([a, b, c, d]), do: "#{trunc((d - b) / (c - a))}"
end
