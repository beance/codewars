# frozen_string_literal: true

# Order of weight
# https://www.codewars.com/kata/59ff4709ba2a14501500003a/train/ruby

def arrange(arr)
  arr.sort_by do |a|
    if a.end_with?('T')
      a.to_i * 1000 * 1000
    elsif a.end_with?('KG')
      a.to_i * 1000
    else
      a.to_i
    end
  end
end

p arrange(%w[3T 3000001G 2950KG])
