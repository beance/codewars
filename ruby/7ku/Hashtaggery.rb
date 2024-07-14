# frozen_string_literal: true

# Hashtaggery
# https://www.codewars.com/kata/536c6d6549aa8b2e160002ae/train/ruby

class String
  def hashtags
    scan(/#\w+/)
  end
end

p 'this sdf #word is #hashtagged'.hashtags
p '# these #words#are#hashtaggs'.hashtags
p '# this #word is hashtagged'.hashtags
