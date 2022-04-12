defmodule Kata do
  def burner(c, h, o) do
    h2o = trunc(min(o, h / 2))
    co2 = trunc(min(c, (o - h2o) / 2))
    ch4 = trunc(min(c - co2, (h - 2 * h2o) / 4))
    {h2o, co2, ch4}
  end
end
