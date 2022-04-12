defmodule Opposites do
  require Integer

  def inlove?(flower1, flower2) do
    Integer.is_even(flower1) != Integer.is_even(flower2)
  end
end
