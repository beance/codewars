defmodule UserValidator do
  def valid?(username), do: String.match?(username, ~r/^[a-z0-9_]{4,16}+\z/)
end
