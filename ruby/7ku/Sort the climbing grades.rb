# frozen_string_literal: true

# https://www.codewars.com/kata/58a08e622e7fb654a300000e/train/ruby

def sort_grades(lst)
  lst.sort!.sort_by! { |grade| grade[1..-1].to_i }
  if lst.include?('VB')
    lst.delete('VB')
    lst.insert(0, 'VB')
  end
  lst
end


p sort_grades(['V0+', 'V0', 'V16', 'V2', 'VB', 'V6'])
