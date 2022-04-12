defmodule Countdigit do
  def nb_dig(n, d) do
    0..n
    |> Enum.map(&(&1 * &1))
    |> Enum.map(&Regex.replace(~r/[^"#{d}"]/, "#{&1}", ""))
    |> Enum.join()
    |> String.length()
  end
end
