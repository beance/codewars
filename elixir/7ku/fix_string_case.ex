efmodule FixStringCase do
  def solve(s) do
    count =
      s
      |> String.graphemes()
      |> Enum.count(&(&1 == String.downcase(&1)))

    if count >= String.length(s) / 2, do: String.downcase(s), else: String.upcase(s)
  end
end
