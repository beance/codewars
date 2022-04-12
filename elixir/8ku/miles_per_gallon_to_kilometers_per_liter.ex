defmodule Converter do
  def convert(mpg), do: Float.round(mpg * 1.609344 / 4.54609188, 2)
end
