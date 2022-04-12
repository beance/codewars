defmodule AddLetters do
  def add_letters([]), do: "z"

  def add_letters(letters) do
    s =
      letters
      |> Enum.map(fn x ->
        String.to_charlist(x) |> Enum.reduce(0, &(&1 + &2 - 96))
      end)
      |> Enum.sum()
      |> rem(26)

    case s do
      0 -> "z"
      value -> <<value + 96>>
    end
  end
end
