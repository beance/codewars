defmodule Password do
  def check(password, hashed_password),
    do: :crypto.hash(:sha256, password) |> Base.encode16() == hashed_password
end
