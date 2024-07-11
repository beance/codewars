# frozen_string_literal: true

# Currency Conversion
# https://www.codewars.com/kata/5a5c118380eba8a53d0000ce/train/ruby

# CONVERSION_RATES = { 'Armenian Dram' => 478, 'Bangladeshi Taka' => 1_010_010, 'Croatian Kuna' => 110,
#                      'Czech Koruna' => 10_101, 'Dominican Peso' => 110_000, 'Egyptian Pound' => 18,
#                      'Guatemalan Quetzal' => 111, 'Haitian Gourde' => 1_000_000, 'Indian Rupee' => 63,
#                      'Japanese Yen' => 1_101_111, 'Kenyan Shilling' => 1_100_110,
#                      'Nicaraguan Cordoba' => 11_111, 'Norwegian Krone' => 1000, 'Philippine Piso' => 110_010,
#                      'Romanian Leu' => 100, 'Samoan Tala' => 11, 'South Korean Won' => 10_000_100_011,
#                      'Thai Baht' => 100_000, 'Uzbekistani Som' => 10_000, 'Venezuelan Bolivar' => 1010,
#                      'Vietnamese Dong' => 101_100_000_101_101 }.freeze

def convert_my_dollars(usd, currency)
  conversion_rate = CONVERSION_RATES[currency]
  conversion_multiplier = /[AEIOU]/.match?(currency[0]) ? 10 : 2
  converted_amount = usd * conversion_rate.to_s.to_i(conversion_multiplier)
  "You now have #{converted_amount} of #{currency}."
end

p convert_my_dollars(7, 'Armenian Dram')
p convert_my_dollars(250, 'Japanese Yen')
