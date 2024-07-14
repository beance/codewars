# frozen_string_literal: true

# Line Type Parser
# https://www.codewars.com/kata/5265a8beff1d1500a30005e9/train/ruby
def line_types(lines)
  lines.map do |e|
    if e&.downcase&.include?('alpha')
      :alpha
    elsif e&.downcase&.include?('beta')
      :beta
    else
      :unknown
    end
  end
end

input = ['This is an alpha line', 'Beta line next!', 'Another AlphA', 'I have no idea', nil]
p line_types(input)
