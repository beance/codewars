defmodule NegationValue do
  def negation_value(str, val) do
    if rem(String.length(str), 2) == 1, do: !val, else: !!val
  end
end
