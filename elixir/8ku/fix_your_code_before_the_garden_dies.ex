defmodule Garden do
  def rain_amount(mm) do
    case mm do
      value when value >= 40 ->
        "Your plant has had more than enough water for today!"

      _ ->
        "You need to give your plant #{40 - mm}mm of water"
    end
  end
end
