# frozen_string_literal: true

# Haiku Wizard
# https://www.codewars.com/kata/595f4df2e8f12961ab00007f/train/ruby
$words = [
  %w[like a tweet what for world whale one last sun],
  %w[ocean beauty tweet monster yellow return despair flower return contrast],
  %w[romantic curious banana jealousy tactlessly remorseful follower elephant however
     instagram],
  %w[salmonella consequently irregular intelligence vegetable ordinary alternative watermelon
     controversial marijuana],
  %w[lackadaisical serendipity colonoscopy dramatically parsimonius imagination electricity
     diabolical deforestation abomination],
  %w[extraterrestrial onomatopoeia responsibility revolutionary generalisation enthusiastically
     biodiversity veterinarian characteristically indefatigable],
  %w[oversimplification individuality decriminalisation compartmentalisation anaesthesiologist
     industrialisation buckminsterfullerene irresponsibility autobiographical utilitarianism]
]
def haiku_wizard(arr)
  arr.map do |subarr|
    subarr.map do |num|
      a, b = num.to_s.chars.map(&:to_i)
      $words[a - 1][b]
    end.join(' ')
  end.join("\n")
end

p haiku_wizard([[14, 27, 26], [75], [53]])
# "for flower despair\nindustrialisation\ndramatically"
