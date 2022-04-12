defmodule Inverter do
  def invert(list), do: Enum.map(list, &(-&1))
end
