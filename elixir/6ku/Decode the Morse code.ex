#Decode the Morse code
#https://www.codewars.com/kata/54b724efac3d5402db00065e
defmodule MorseCode do
  use MorseCode.Constants # Defines @morse_codes
  def decode(code) do
    code
    |> String.split(" ")
    |> Enum.map(fn x ->
      if @morse_codes[x], do: @morse_codes[x], else: " "
    end)
    |> Enum.join("")
    |> String.replace("  ", " ")
    |> String.trim()
  end
end
