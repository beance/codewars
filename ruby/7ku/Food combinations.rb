# frozen_string_literal: true

# Food combinations
#

def actually_really_good(foods)
  str = "You know what's actually really good? "
  foods = foods.uniq
  if foods.length >= 2
    str + "#{foods[0].capitalize} and #{foods[1].downcase}."
  elsif foods.length == 1
    str + "#{foods[0].capitalize} and more #{foods[0].downcase}."
  else
    "#{str}Nothing!"
  end
end

foods = %w[spam spam sausage spam spam spam spam spam spam spam]
result = actually_really_good(foods)
puts result
