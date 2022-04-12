defmodule YesOrNo do
  def boolToWord(b) when b == true, do: "Yes"
  def boolToWord(b) when b == false, do: "No"
end
