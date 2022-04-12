defmodule Seven do
  def seven(m) do
    _seven(m, 0)
  end

  def _seven(m, i) when m < 10, do: [m, i]

  def _seven(m, i) do
    {x, [y | _]} = Integer.digits(m) |> Enum.split(length(Integer.digits(m)) - 1)
    sum = (Enum.join(x) |> String.to_integer()) - y * 2

    case length(Integer.digits(sum)) do
      value when value > 2 -> _seven(sum, i + 1)
      _ -> [sum, i + 1]
    end
  end
end
