defmodule SentenceSmasher do
  def smash(words), do: String.trim(Enum.join(words, " "))
end

