# frozen_string_literal: true

# Birthday II - Presents
# https://www.codewars.com/kata/5805f0663f1f9c49be00011f/train/ruby

def present(x, y)
  case x
  when "badpresent"
    "Take this back!"
  when "goodpresent"
    x.chars.map { |c| (c.ord + y).chr }.join
  when "crap"
    x.chars.sort.join
  when "bang"
    x.chars.sum { |c| c.ord - y }.to_s
  when "dog"
    "pass out from excitement #{y} times"
  else
    x.chars.sort.join
  end
end

p present("badpresent", 3)
p present("bang", 27)
p present("crap", 27)
p present("goodpresent", 9)
