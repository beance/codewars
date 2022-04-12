defmodule LargestInSeries do
  @spec solution(String.t()) :: integer
  def solution(digits) do
    digits
    |> String.to_integer()
    |> Integer.digits()
    |> _take_five
    |> Enum.max()
  end

  defp _take_five([x]) do
    [x]
  end

  defp _take_five(x) do
    [_ | xs] = x
    [Enum.take(x, 5) |> Enum.join() |> String.to_integer()] ++ _take_five(xs)
  end
end
