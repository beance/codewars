# frozen_string_literal: true

# Password Hashes
# https://www.codewars.com/kata/54207f9677730acd490000d1/train/ruby

require 'digest'
def pass_hash(str)
  Digest::MD5.hexdigest(str)
end

p pass_hash 'abc123'
