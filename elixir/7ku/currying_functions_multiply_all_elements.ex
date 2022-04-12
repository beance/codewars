defmodule Multiply_all do
  def solution(n) do
    fn y ->
      Enum.map(n, fn x -> x * y end)
    end
  end
end
