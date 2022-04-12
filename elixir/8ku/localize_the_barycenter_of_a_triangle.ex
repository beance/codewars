defmodule Barycenter do
  def bar_triang({x1, y1}, {x2, y2}, {x3, y3}),
    do: {Float.round((x1 + x2 + x3) / 3, 4), Float.round((y1 + y2 + y3) / 3, 4)}
end
