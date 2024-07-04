# frozen_string_literal: true
# French Imparfait Conjugation
# https://www.codewars.com/kata/6394c1995e54bd00307cf768/train/ruby

def to_imparfait(phrase)
  phrase = phrase[0..phrase.length - 3]
  case
  when phrase.start_with?("Ils") || phrase.start_with?("Elles")
    phrase + "aient"
  when phrase.start_with?("Je") || phrase.start_with?("Tu")
    phrase + "ais"
  when phrase.start_with?("Il") || phrase.start_with?("Elle") || phrase.start_with?("On")
    phrase + "ait"
  when phrase.start_with?("Nous")
    phrase + "ions"
  when phrase.start_with?("Vous")
    phrase + "iez"
  end
end


p to_imparfait("Ils jouer")
p to_imparfait("Ils jouer") == "Ils jouaient"
