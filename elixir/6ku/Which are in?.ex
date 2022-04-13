# https://www.codewars.com/kata/550554fd08b86f84fe000a58

defmodule Whicharein do
  def in_array(array1, array2) do
    for x <- array1, y <- array2 do
      if String.contains?(y, x), do: x
    end
    |> Enum.uniq()
    |> Enum.reject(&is_nil/1)
    |> Enum.sort()
  end
end
