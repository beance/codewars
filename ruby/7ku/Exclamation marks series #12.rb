# frozen_string_literal: false

# Exclamation marks series #12: Remove odd number continuous exclamation marks and question marks
# https://www.codewars.com/kata/57fb0f3f9610ced69000023c

# REGEX = /(?<=!|^)\?(\?\?)+(?=!|$)|(?<=\?|^)!(!!)+(?=\?|$)/
# def remove(s)
#   s[REGEX] ? remove(s.gsub(REGEX, '')) : s
# end

def remove(s)
  if s.chars.chunk_while(&:==).any? { |g| g.size > 1 && g.size.odd? }
    remove(s = s.chars.chunk_while(&:==).reject { |g| g.size > 1 && g.size.odd? }.join(''))
  else
    s
  end
end

# p remove("!????!!!?") # "!"
p remove('!!!??') # "??"
p remove('!???!!') # ""
# p remove("!?!!") # ""
