# frozen_string_literal: true

# Password System
# https://www.codewars.com/kata/57a23e3753ba332b8e0008da/train/ruby

def help_zoom(key)
  key == key.reverse ? 'Yes' : 'No'
end

p help_zoom([1, 1, 0, 0, 0, 0, 0, 1, 1]) # "Yes"
p help_zoom([1, 1, 0, 0, 0, 0, 1, 1, 0]) # "No"
p help_zoom([1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1]) # "Yes"
p help_zoom([1, 0, 1, 1, 0, 0, 0, 0, 0]) # "No"
p help_zoom([1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1]) # "No"
