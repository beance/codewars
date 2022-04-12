defmodule NumGenerator do
  def generate_range(min, max, step) do
    Enum.take_every(min..max, step)
  end
end
