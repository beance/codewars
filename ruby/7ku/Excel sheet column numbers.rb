# frozen_string_literal: true
# Excel sheet column numbers
# https://www.codewars.com/kata/55ee3ebff71e82a30000006a/train/ruby



def title_to_number(title)
  title.chars.reduce(0) { |total, char| total * 26 + char.ord - 64 }
end

p title_to_number('A')
# p title_to_number('Z')