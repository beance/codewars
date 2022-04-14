# Esolang Interpreters #1 - Introduction to Esolangs and My First Interpreter (MiniStringFuck)
# https://www.codewars.com/kata/586dd26a69b6fd46dd0000c0
defmodule MiniStringFuck do
  @moduledoc false
  def execute(command) do
    command
    |> String.codepoints()
    |> Enum.reduce({0, []}, fn
      "+", {255, out} -> {0, out}
      "+", {x, out} -> {x + 1, out}
      ".", {x, out} -> {x, [out | [x]]}
      _cp, acc -> acc
    end)
    |> elem(1)
    |> List.to_string()
  end
end
