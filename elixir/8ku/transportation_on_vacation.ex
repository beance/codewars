defmodule Rent do
  def rental_car_cost(d) when d >= 7, do: d * 40 - 50
  def rental_car_cost(d) when d >= 3, do: d * 40 - 50
  def rental_car_cost(d) when d < 3, do: d * 40
end
