defmodule Parsers do
  def ensure_question(s), do: if(String.last(s) == "?", do: s, else: s <> "?")
end
