# Create a String for values within a given Range from a Hash
# https://www.codewars.com/kata/53e8ab878f9e6658410002af/train/ruby

def list_in_range(hash, range)
  hash.select { |k, v| range.include?(v) }.sort_by { |k, v| v }.map { |k, v| "#{k} (#{v})" }.join(", ")
end

food = {
  "Hamburger" => 1.99,
  "Cheese" => 0.99,
  "Steak" => 4.99,
  "Lobster" => 7.99,
  "Fries" => 1.49,
  "Sandwich" => 2.49
}

puts "=" * 30
puts list_in_range(food, (0.99..1.99)) # "Cheese (0.99), Fries (1.49), Hamburger (1.99)"
puts "=" * 30
