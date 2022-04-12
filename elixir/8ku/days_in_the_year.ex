defmodule DateUtils do
  def year_days(year) when rem(abs(year), 100) == 0 and rem(abs(year), 400) != 0,
    do: "#{year} has 365 days"

  def year_days(year) when rem(abs(year), 4) == 0, do: "#{year} has 366 days"
  def year_days(year) when rem(abs(year), 400) == 0, do: "#{year} has 366 days"
  def year_days(year), do: "#{year} has 365 days"
end
