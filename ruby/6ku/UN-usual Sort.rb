# frozen_string_literal: true

# UN-usual Sort
# https://www.codewars.com/kata/5443b8857fc4473cb90008e4/train/ruby

def unusual_sort(array)
  dig, char = array.partition { |x| x.ord <= 57 }
  char.sort + dig.sort_by { |x| [x.to_i, x.ord] }
end

p unusual_sort(["0", "9", "8", "1", "7", "2", "6", "3", "5", "4"])
# ["0","1","2","3","4","5","6","7","8","9"]
p unusual_sort([3, "3", "2", 2, "2", "1", 1, "a", "b", "c"])
# ["a","b","c",1,"1",2,"2","2",3,"3"],"should sort 'digits' after 'same-digit-numbers'")
