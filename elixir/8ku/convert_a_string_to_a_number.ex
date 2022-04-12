defmodule Numerify do
  def string_to_number(str), do: elem(Integer.parse(str), 0)
end
