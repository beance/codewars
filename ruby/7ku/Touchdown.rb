# frozen_string_literal: true

# Touchdown?
#

def touchdown?(plays)
  count = 4
  sum = 0
  plays.map.with_index do |k, _i|
    sum += k
    if sum >= 10
      sum = 0
      count = 4
      true
    else
      count -= 1
      return false if count.zero?
    end
  end.compact.any?
end

def touchdown?(plays)
  x = plays.each_cons(4)
  x.none? { |el| el.sum < 10 }
end

yards = [35, 20, 1, 5, 4, 2, 10, 8, 1, 6, 8]
yards = [20, 1, 2, 3, 3, 5, 66]
yards = [90, 5.4, 4.6]

p touchdown?(yards)
