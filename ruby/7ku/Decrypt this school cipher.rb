# frozen_string_literal: true

# Decrypt this school cipher
# https://www.codewars.com/kata/5cd48cffaae6e30018943175/train/ruby
def decrypt(str)
  str.gsub(/'(\d+)'/) { Regexp.last_match(1).to_i.chr }.reverse
end

p decrypt("'101''99''105''108''65'")
p decrypt('30 71')
p decrypt("17'84''77''99''100''67' '80''115''69''76''109'393")
