defmodule Polyglot do
  @dict ~w(hello ciao salut hallo hola ahoj czesc)

  def validate_hello(greetings) do
    greetings
    |> String.downcase()
    |> String.contains?(@dict)
  end
end
