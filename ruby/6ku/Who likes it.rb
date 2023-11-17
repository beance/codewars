# frozen_string_literal: true

# https://www.codewars.com/kata/5266876b8f4bf2da9b000362

def likes(names)
  case
  when names.empty?
    'no one likes this'
  when names.size == 1
    "#{names[0]} likes this"
  when names.size == 2
    "#{names[0]} and #{names[1]} like this"
  when names.size == 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0..1].join(', ')} and #{names.size - 2} others like this"
  end
end

p likes(%w[Max John Mark])
p likes([])
p likes(["Alex", "Jacob", "Mark", "Max"])
