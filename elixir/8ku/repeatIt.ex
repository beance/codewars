defmodule Repeater do
  def repeat_it(str, n) when is_binary(str), do: String.duplicate(str, n)
  def repeat_it(_, _n), do: "Not a string"
end
