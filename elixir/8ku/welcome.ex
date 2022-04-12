defmodule Greeter do
  @dict %{
    english: "Welcome",
    czech: "Vitejte",
    danish: "Velkomst",
    dutch: "Welkom",
    estonian: "Tere tulemast",
    finnish: "Tervetuloa",
    flemish: "Welgekomen",
    french: "Bienvenue",
    german: "Willkommen",
    irish: "Failte",
    italian: "Benvenuto",
    latvian: "Gaidits",
    lithuanian: "Laukiamas",
    polish: "Witamy",
    spanish: "Bienvenido",
    swedish: "Valkommen",
    welsh: "Croeso"
  }

  def greet("IP_ADDRESS_INVALID"), do: "Welcome"
  def greet("IP_ADDRESS_NOT_FOUND"), do: "Welcome"
  def greet("IP_ADDRESS_REQUIRED"), do: "Welcome"
  def greet(language), do: @dict[String.to_atom(language)]
end
