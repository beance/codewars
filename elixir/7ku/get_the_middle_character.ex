defmodule Challenge do
  import Integer

  def get_middle(str) do
    count = str |> String.length()

    case count do
      value when is_even(value) ->
        String.slice(str, floor(count / 2 - 1)..floor(count / 2))

      _ ->
        String.at(str, div(count, 2))
    end
  end
end
