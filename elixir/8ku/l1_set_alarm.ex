defmodule Alarm do
  def set_alarm(employed, vacation) when employed == true and vacation == false, do: true
  def set_alarm(_employed, _vacation), do: false
end
