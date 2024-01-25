# frozen_string_literal: true

# Don't give me five!
# https://www.codewars.com/kata/5813d19765d81c592200001a/train/ruby

def dont_give_me_five(start_, end_)
  (start_..end_).count { |i| !i.to_s.include?("5") }
end

p dont_give_me_five(4, 17)
