defmodule Well do
  def well(x) do
    case Enum.count(x, fn x -> x == "good" end) do
      0 -> "Fail!"
      value when value <= 2 -> "Publish!"
      value when value > 2 -> "I smell a series!"
    end
  end
end
