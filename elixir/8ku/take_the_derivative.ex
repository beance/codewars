defmodule Kata do
  def derive(coefficient, exponent), do: "#{coefficient * exponent}x^#{exponent - 1}"
end
