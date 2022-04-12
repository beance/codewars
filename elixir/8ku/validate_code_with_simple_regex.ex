defmodule CodeValidator do
  def valid?(code), do: String.match?(to_string(code), ~r/^1|^2|^3+/)
end
