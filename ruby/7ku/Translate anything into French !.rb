# frozen_string_literal: true

# Translate anything into French !
# https://www.codewars.com/kata/57238e345b21bb8c4b0000fc/train/ruby

def i_speak_french(sentence)
  sentence.split(".").map do |s|
    s.split.map.with_index do |word, index|
      index == 0 ? "Baguette" : "baguette"
    end.join(" ") + " Encore!"
  end.join(" ")
end

# def i_speak_french(s)
#   s.split('.').map do |sentence|
#     "#{sentence.strip.gsub(/\w+/, 'baguette').capitalize} Encore!"
#   end.join(' ')
# end

# p i_speak_french("I speak French.")
p i_speak_french("I am fluent. In French.")
p i_speak_french("test")
