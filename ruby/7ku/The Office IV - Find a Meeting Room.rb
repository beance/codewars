# frozen_string_literal: true

# The Office IV - Find a Meeting Room
#

def meeting(rooms)
  rooms.find_index('O') || 'None available!'
end

p meeting(%w[X O X])
