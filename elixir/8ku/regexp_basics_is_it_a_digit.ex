defmodule StringUtils do
  def digit?(s), do: String.match?(s, ~r/^\d\z/)
end
