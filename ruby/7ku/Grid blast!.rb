# frozen_string_literal: true
# Grid blast!
#


$grid = ["top left", "top middle", "top right", "middle left", "center", "middle right", "bottom left", "bottom middle", "bottom right"]

def fire(x, y)
  $grid[y*3+x]
end

p fire(0, 0)