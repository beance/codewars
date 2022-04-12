defmodule Movie do
  def movie(card, ticket, perc) do
    Stream.iterate(0, &(&1 + 1))
    |> Stream.take_while(fn x ->
      ceil(card + ticket * perc * (1 - :math.pow(perc, x)) / (1 - perc)) >=
        ticket * x
    end)
    |> Enum.count()
  end
end
