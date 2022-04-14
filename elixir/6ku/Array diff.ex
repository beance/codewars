# Array.diff
# https://www.codewars.com/kata/523f5d21c841566fde000009
defmodule ArrayDiff do
  def array_diff(a, b), do: Enum.reject(a, &(&1 in b))
end
