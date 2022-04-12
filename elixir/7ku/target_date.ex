defmodule DateDays do
  def date_nb_days(a0, a, p) do
    days =
      Stream.iterate(a0, &(&1 + &1 * p / 100 / 360))
      |> Stream.take_while(&(&1 < a))
      |> Enum.count()

    Date.add(~D[2016-01-01], days) |> to_string()
  end
end
