defmodule ExpressionMatter do
  def expression_matter(a, b, c) do
    [a * (b + c), a * b * c, a + b * c, (a + b) * c, a + b + c]
    |> Enum.max()
  end
end
