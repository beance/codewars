defmodule Finder do
  def find_needle(haystack) do
    index = Enum.find_index(haystack, fn x -> x == "needle" end)

    if index >= 0 do
      "found the needle at position #{index}"
    end
  end
end
