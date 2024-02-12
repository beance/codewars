#
# Santa's Missing Gift List
# https://www.codewars.com/kata/5665d30b3ea3d84a2c000025/train/ruby

GIFTS = {
  1 => "Toy Soldier",
  2 => "Wooden Train",
  4 => "Hoop",
  8 => "Chess Board",
  16 => "Horse",
  32 => "Teddy",
  64 => "Lego",
  128 => "Football",
  256 => "Doll",
  512 => "Rubik's Cube"
}
def gifts(number)
  result_list = []
  GIFTS.keys.sort.reverse_each do |gift_value|
    if GIFTS[gift_value] && gift_value <= number
      result_list << GIFTS[gift_value]
      number -= gift_value
    end
  end
  result_list.sort
end

p gifts(22)
