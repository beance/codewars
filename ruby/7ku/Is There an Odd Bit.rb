# frozen_string_literal: true

# Is There an Odd Bit?

def any_odd?(x)
  (x & 0xAAAAAAAA) != 0
end

p any_odd?(2)
# p any_odd?(170)
