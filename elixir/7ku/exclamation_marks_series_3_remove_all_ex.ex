defmodule Solution do
  def remove(s), do: Regex.replace(~r/!(?!!*\z)/, s, "")
end
