# frozen_string_literal: true

# Get the Middle Character
# https://www.codewars.com/kata/56747fd5cb988479af000028/

def get_middle(s)
  count = s.size
  count.even? ? s[(count / 2) - 1..(count / 2)] : s[(count / 2)]
end

p get_middle('middle') # "es"
