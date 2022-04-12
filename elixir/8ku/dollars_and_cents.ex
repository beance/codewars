defmodule Cashier do
  def format_money(amount) do
    "$#{Float.to_string(amount, decimals: 2)}"
  end
end
