defmodule Kata do
  def vert_mirror(str) do
    str
    |> String.splitter("\n", trim: true)
    |> Stream.map(&String.reverse/1)
    |> Enum.join("\n")
  end

  def hor_mirror(str) do
    str
    |> String.splitter("\n", trim: true)
    |> Enum.reverse()
    |> Enum.join("\n")
  end

  def oper(func, s) do
    func.(s)
  end
end
