# frozen_string_literal: true
# Clean up after your dog
#

def crap(garden, bags, cap)
  flat_grid = garden.flatten

  dog_count = flat_grid.count('D')
  crap_count = flat_grid.count('@')

  return "Dog!!" if dog_count > 0
  return "Cr@p" if crap_count > (bags * cap)

  "Clean"
end


p crap([['_','_','_','_'], ['_','_','_','@'], ['_','_','@', '_']], 2, 2) #("Clean")
