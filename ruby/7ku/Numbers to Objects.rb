# frozen_string_literal: true

# Numbers to Objects
# https://www.codewars.com/kata/57ced2c1c6fdc22123000316/train/ruby

def num_obj(s)
  s.map { |e| { e.to_s => e.chr } }
end

p num_obj([118, 117, 120]) # ([{"118"=>"v"}, {"117"=>"u"}, {"120"=>"x"}])
