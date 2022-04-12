defmodule Order do
  def next_id(ids) do
    ids = Enum.sort(ids, :asc)

    0..Enum.count(ids)
    |> Enum.reject(&(&1 in ids))
    |> List.first()
  end
end
