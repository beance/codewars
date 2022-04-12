defmodule Dna do
  def dna_strand(dna_str) do
    dna_str
    |> String.graphemes()
    |> Enum.map(fn x ->
      case x do
        val when val == "A" -> "T"
        val when val == "T" -> "A"
        val when val == "G" -> "C"
        val when val == "C" -> "G"
      end
    end)
    |> Enum.join()
  end
end
