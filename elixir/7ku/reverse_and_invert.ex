defmodule ReverseInverter do
  def reverse_invert(lst) do
    lst
    |> Enum.filter(&is_integer(&1))
    |> Enum.map(
      &if &1 > 0 do
        -(Integer.to_string(&1) |> String.reverse() |> String.to_integer())
      else
        (Integer.to_string(-&1) |> String.reverse() |> String.to_integer())
      end
    )
  end
end
