defmodule Codewars.Reward do
  def bonus_time(salary, bonus) when bonus, do: "$#{salary * 10}"
  def bonus_time(salary, bonus), do: "$#{salary}"
end
