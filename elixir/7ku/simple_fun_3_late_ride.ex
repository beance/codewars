defmodule LateRide do
  def late_ride(n) do
    (Integer.digits(div(n, 60)) ++ Integer.digits(rem(n, 60)))
    |> Enum.sum()
  end
end
