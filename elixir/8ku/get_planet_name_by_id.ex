defmodule Kata do
  @planetNames ~w{Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune}

  def getPlanetName(id) do
    Enum.at(@planetNames, id - 1)
  end
end
