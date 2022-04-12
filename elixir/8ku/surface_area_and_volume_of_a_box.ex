defmodule Measurer do
  def get_size(width, height, depth) do
    {2 * (width * depth + width * height + depth * height), width * height * depth}
  end
end
