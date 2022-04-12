defmodule Genetic do
  def generate(len, acc \\ "")
  def generate(0, acc), do: acc
  def generate(len, acc) do
    generate(len-1, acc <> Integer.to_string(:random.uniform(2)-1))
  end
end
