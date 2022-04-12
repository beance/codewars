defmodule Kata do
  def div_con(x) do
    x
    |> Enum.map(
      &cond do
        is_binary(&1) -> -String.to_integer(&1)
        is_number(&1) -> &1
      end
    )
    |> Enum.sum()
  end
end
