# frozen_string_literal: false

# https://www.codewars.com/kata/542a823c909c97da4500055e

def polybius(plain_text)
  grid = [%w[A B C D E], %w[F G H I/J K], %w[L M N O P], %w[Q R S T U], %w[V W X Y Z]]
  cipher_text = ''

  plain_text.upcase.chars.each do |char|
    case char
    when 'J', 'I'
      cipher_text << '24'
    when 'A'..'Z'
      grid.each_with_index do |row, row_index|
        column_index = row.index(char)
        if column_index
          cipher_text << "#{row_index + 1}#{column_index + 1}"
          break
        end
      end
    else
      cipher_text << char
    end
  end

  cipher_text
end

p polybius('CODEWARS') == '1334141552114243'



# PSC = {"A"=>11, "B"=>12, "C"=>13, "D"=>14, "E"=>15, "F"=>21, "G"=>22, "H"=>23, "I"=>24, "J"=>24,
#        "K"=>25, "L"=>31, "M"=>32, "N"=>33, "O"=>34, "P"=>35, "Q"=>41, "R"=>42, "S"=>43, "T"=>44,
#        "U"=>45, "V"=>51, "W"=>52, "X"=>53, "Y"=>54, "Z"=>55}
#
# def polybius(t)
#   t.gsub(/(\w)/) {PSC[$1]}
# end