# frozen_string_literal: true

# Cats and shelves
#

def jumps(start, finish)
  (finish - start).divmod(3).sum
end

p jumps(1, 3)
