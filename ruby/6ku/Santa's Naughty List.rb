# frozen_string_literal: true
# Santa's Naughty List
# https://www.codewars.com/kata/5a0b4dc2ffe75f72f70000ef/train/ruby

def find_children(santas_list, children)
  (santas_list & children).sort
end

p find_children(["Jason", "Jackson", "Jordan", "Johnny"], ["Jason", "Jordan", "Jennifer"])