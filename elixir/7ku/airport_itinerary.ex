defmodule Trip do
  def itinerary(trip) do
    sort =
      trip
      |> Enum.map(&[&1.in, &1.out])
      |> List.flatten()

    sort
    |> Enum.with_index()
    |> Enum.reject(fn {x, y} ->
      x == Enum.at(sort, y + 1)
    end)
    |> Enum.map(fn {x, y} -> x end)
    |> Enum.join("-")
  end
end

defmodule Flight do
  defstruct [:in, :out]
end
