# frozen_string_literal: true

# Convert a Hashy String to a Hash
# https://www.codewars.com/kata/57df097c1dbd8f971500003f/train/ruby
def hashy_string_to_hash(str)
  eval(str)
end

hsh = "{:a=>1, :b=>2, :c=>3}"
p hashy_string_to_hash(hsh)
