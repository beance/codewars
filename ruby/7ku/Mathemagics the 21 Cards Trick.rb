# frozen_string_literal: true
# https://www.codewars.com/kata/62b76a4f211432636c05d0a9/train/ruby

DECK = (1..21).to_a.freeze

def guess_the_card(audience)
  deck = DECK.dup
  3.times do
    decks = [deck.each_slice(3).map(&:first), deck.each_slice(3).map { |s| s[1] }, deck.each_slice(3).map(&:last)]
    chosen_deck_index = audience.get_input(decks)
    chosen_deck = decks.delete_at(chosen_deck_index)
    deck = decks[0] + chosen_deck + decks[1]
  end
  deck[10]
end