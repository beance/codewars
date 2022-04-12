defmodule Maxrot do
  def max_rot(num) do
    _rotate(num, 0, []) |> Enum.max()
  end

  defp _rotate(s, i, arr) do
    arr = arr ++ [s]
    str = "#{s}"

    if i <= String.length(str) do
      str =
        String.to_integer(
          "#{String.slice(str, 0, i)}#{String.slice(str, i + 1, String.length(str))}#{String.at(str, i)}"
        )

      _rotate(str, i + 1, arr)
    else
      arr
    end
  end
end
