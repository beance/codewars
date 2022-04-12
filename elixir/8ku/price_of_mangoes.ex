defmodule Solution do
  def mango(quantity, price) do
    (quantity - div(quantity, 3)) * price
  end
end
