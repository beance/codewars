defmodule SleighAuthentication do
  def authenticate?("Santa Claus", "Ho Ho Ho!"), do: true
  def authenticate?(_name, _password), do: false
end
