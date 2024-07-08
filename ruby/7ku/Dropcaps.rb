# frozen_string_literal: true
# Dropcaps
# https://www.codewars.com/kata/559e5b717dd758a3eb00005a/train/ruby



def drop_cap(str)
  str.gsub(/\w{3,}/,&:capitalize)
end


p drop_cap("   space wALK   ")