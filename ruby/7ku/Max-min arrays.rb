# frozen_string_literal: true
# Max-min arrays

def solve(arr)
  arr.sort.reverse.zip(arr.sort).flatten.uniq
end

p solve([15,11,10,7,12]) #[15,7,12,10,11]