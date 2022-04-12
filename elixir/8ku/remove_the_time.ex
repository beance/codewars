defmodule Datemizer do
  def shorten_to_date(datetime), do: Regex.replace(~r/, \d{1,2}.m/, datetime, "")
end
