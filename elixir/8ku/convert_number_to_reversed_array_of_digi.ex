defmodule Digitizer do
  def digitize(n), do: Integer.digits(n) |> Enum.reverse()
end
