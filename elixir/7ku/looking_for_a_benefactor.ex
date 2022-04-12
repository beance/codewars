defmodule Benefactor do
  def new_avg(arr, newavg) do
    sum = Enum.reduce(arr, 0, fn x, acc -> newavg - x + acc end) + newavg

    case sum do
      value when value <= 0 -> raise ArgumentError, message: "Expected New Average is too low"
      _ -> ceil(sum)
    end
  end
end
