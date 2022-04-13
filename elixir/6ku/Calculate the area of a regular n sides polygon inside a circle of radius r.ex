#Calculate the area of a regular n sides polygon inside a circle of radius r
# https://www.codewars.com/kata/5a58ca28e626c55ae000018a
defmodule Kata do
  def area_of_polygon_inside_circle(circle_radius, number_of_sides) do
    Float.round(
      circle_radius * circle_radius * number_of_sides *
        :math.sin(:math.pi() / number_of_sides * 2) /
        2,
      3
    )
  end
end
