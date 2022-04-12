defmodule SimpleFun do
  @spec kill_kth_bit(n :: non_neg_integer(), k :: pos_integer()) :: non_neg_integer()
  def kill_kth_bit(n, k) do
    Integer.digits(n, 2)
    |> List.replace_at(-k, 0)
    |> Integer.undigits(2)
  end
end
