defmodule Quiver do
  def any_arrows?([]), do: false

  def any_arrows?(arrows) do
    false in Enum.map(arrows, &(&1["damaged"] == true))
  end
end
