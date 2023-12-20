# frozen_string_literal: true

# Valid Braces
# https://www.codewars.com/kata/5277c8a221e209d3f6000b56/train/ruby
def validBraces(string)
  while string.include?("{}") || string.include?("()") || string.include?("[]")
    string = string.gsub("{}", "")
    string = string.gsub("()", "")
    string = string.gsub("[]", "")
  end
  string.empty?
end

validBraces "([{}])"
