defmodule Codewars.Zoo do
  def fix_the_meerkat(tuple) do
    tuple
    |> Tuple.to_list()
    |> Enum.reverse()
    |> List.to_tuple()
  end
end
