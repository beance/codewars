# frozen_string_literal: true

# Regex validate PIN code
# https://www.codewars.com/kata/55f8a9c06c018a0d6e000132

def validate_pin(pin)
  pin.match?(/\A\d{4}(\d{2})?\z/)
end

p validate_pin('4275b1')
