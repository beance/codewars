defmodule Kata do
  def womens_age(n), do: "#{n}? That's just #{20 + rem(n, 2)}, in base #{trunc(n / 2)}!"
end
