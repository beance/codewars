# frozen_string_literal: true
# Batman Quotes
# https://www.codewars.com/kata/551614eb77dd9ee37100003e/train/ruby
#

class BatmanQuotes
  def self.get_quote(quotes,hero)
    hero_name = { 'R' => 'Robin', 'J' => 'Joker', 'B' => 'Batman' }[hero[0]]
    quote_number = hero.match(/\d+/)[0].to_i
    "#{hero_name}: #{quotes[quote_number]}"
  end
end
quotes = ["WHERE IS SHE?!", "Holy haberdashery, Batman!", "Let's put a smile on that faaaceee!"]
BatmanQuotes.get_quote(quotes, "Rob1n") # "Robin: Holy haberdashery, Batman!"
