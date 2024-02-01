# frozen_string_literal: true

# https://www.codewars.com/kata/5411c4205f3a7fd3f90009ea/train/ruby

def string_parse string
  string.gsub /(.)\1(\1+)/, '\1\1[\2]' rescue 'Please enter a valid string'
end

def string_parse(string)
  return 'Please enter a valid string' unless string.is_a?(String)

  string = string.chars
  output = ''
  count = 1
  string.each_with_index do |c, i|
    if c == string[i + 1]
      count += 1
    else
      output += count > 2 ? "#{c * 2}[#{c * (count - 2)}]" : (c * count).to_s
      count = 1
    end
  end
  output
end

p string_parse('aaaabbcdefffffffg') #== "aa[aa]bbcdeff[fffff]g"
