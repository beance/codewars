defmodule Solution do
  def two_oldest_ages(ages) do
    [x, y | tail] = Enum.sort(ages, :desc)
    [y, x]
  end
end
