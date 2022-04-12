defmodule IsPalindrome do
  def is_palindrome(s) do
    String.downcase(s) |> String.reverse() == String.downcase(s)
  end
end
