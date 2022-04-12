defmodule Wallpaper do
  @spec wallpaper(number, number, number) :: String.t()
  @rolls [
    "zero",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen",
    "twenty"
  ]

  def wallpaper(l, w, h) do
    @rolls |> Enum.at(ceil((l + w) * 2 / 0.52 / (10 / h) * (1 + 15 / 100)))
  end
end
