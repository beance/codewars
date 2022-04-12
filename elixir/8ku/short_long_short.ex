defmodule ShortLongShort do
  def solution(a, b) do
    cond do
      String.length(a) > String.length(b) -> b <> a <> b
      String.length(a) < String.length(b) -> a <> b <> a
    end
  end
end
