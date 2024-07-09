# frozen_string_literal: true
# Convert Hash To An Array
# https://www.codewars.com/kata/59557b2a6e595316ab000046/train/ruby
def convert_hash_to_array(hash)
  hash.map { |k,v| [k.to_s,v]}.sort
end

p convert_hash_to_array({:name=>"Doug", :age=>42, :role=>"janitor"})