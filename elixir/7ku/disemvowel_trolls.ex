defmodule Kata do
  def disemvowel(str) do
    Regex.replace(~r{[aAeEiIoOuU]}, str, "")
  end
end
