defmodule Kata do
  def growing_plant(up_speed, down_speed, desired_height) do
    Stream.iterate(1, &(&1 + 1))
    |> Enum.reduce_while(up_speed, fn x, acc ->
      if acc >= desired_height, do: {:halt, x}, else: {:cont, acc + up_speed - down_speed}
    end)
  end
end
