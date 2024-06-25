# frozen_string_literal: true

# Radio DJ helper function
# https://www.codewars.com/kata/561bbcb0fbbfb0f5010000ee

def longest_possible(playback)
  valid_songs = songs.each do |song|
    minutes, seconds = song[:playback].split(':').map(&:to_i)
    song[:playback_seconds] = minutes * 60 + seconds
  end.select { |song| song[:playback_seconds] <= playback }
  return false if valid_songs.empty?

  longest_song = valid_songs.max_by { |song| song[:playback_seconds] }
  longest_song[:title]
end

p longest_possible(215)
