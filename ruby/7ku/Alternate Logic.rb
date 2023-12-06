# frozen_string_literal: true

# Alternate Logic
# https://www.codewars.com/kata/58f625e20290fb29c3000056/train/ruby

def alt_or(lst)
  return nil if lst.empty?

  lst.any?(true)
end
p alt_or([false, false, false, false, false, false])
