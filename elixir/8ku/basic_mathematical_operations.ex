defmodule SimpleMath do
  def basic_op(operation, value1, value2) do
    {result, _} = Code.eval_string("a" <> operation <> "b", a: value1, b: value2)
    result
  end
end
