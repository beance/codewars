defmodule Hellouer do
  def say_hello(name, city, state),
    do: "Hello, #{Enum.join(name, " ")}! Welcome to #{city}, #{state}!"
end
