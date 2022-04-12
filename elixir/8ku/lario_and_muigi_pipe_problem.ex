defmodule Pipeline do
  def fix_pipe(pipes) do
    Enum.to_list(List.first(pipes)..List.last(pipes))
  end
end
