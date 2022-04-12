defmodule Calculator do
  def get_average(marks) do
    floor(Enum.sum(marks) / Enum.count(marks))
  end
end
