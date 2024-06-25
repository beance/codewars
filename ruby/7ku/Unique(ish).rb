# frozen_string_literal: true

# Unique(ish)
# https://www.codewars.com/kata/595afed8c52e25d92c000072/train/ruby

def unique(strings)
  strings.uniq { |s| s.downcase.gsub(/\W/, '') }
end

# def unique strings
#   unique_values = []
#   unique_keys = []
#   input_hash = strings.map.with_index { |s, i| [i, s.downcase.gsub(/[:;'.,?!]/, "")] }.to_h
#   input_hash.each do |key, value|
#     unless unique_values.include?(value)
#       unique_values << value
#       unique_keys << strings[key]
#     end
#   end
#
#   unique_keys
# end

p unique(['Hello', 'hello', 'HeLlo!', 'world!', 'world'])
