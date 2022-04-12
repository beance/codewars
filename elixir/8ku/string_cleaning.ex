defmodule Codewars do
  def string_clean(s), do: Regex.replace(~r/[0-9]/, s, "")
end
