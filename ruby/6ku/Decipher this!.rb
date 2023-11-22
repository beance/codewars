# frozen_string_literal: true
# https://www.codewars.com/kata/581e014b55f2c52bb00000f8/train/ruby

def decipher_this(string)
  words = string.split

  decoded_words = []
  words.each do |word|
    decoded_word = word.gsub(/^\d+/) { |num| num.to_i.chr }
    decoded_word[-1], decoded_word[1] = decoded_word[1], decoded_word[-1] unless decoded_word[1].nil?
    decoded_words << decoded_word
  end

  decoded_words.join(' ')
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") #== "A wise old owl lived in an oak"
# p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") #== "The more he saw the less he spoke"
# decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
# decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
# decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"


# def decipher_this(string)
#   string.gsub(/(\d+)(\w)?(\w*?)(\w)?\b/){"#{$1.to_i.chr}#{$4}#{$3}#{$2}"}
# end