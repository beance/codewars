# frozen_string_literal: true

def queue(customers, position)
  time = 0
  flag = true
  while flag
    tmp = customers[0] - 1
    customers.push(tmp) if tmp.positive?
    customers.delete_at(0)

    if position.zero? && tmp.zero?
      flag = false
    elsif position.zero?
      position = customers.size - 1
    else
      position -= 1
    end
    time += 1
  end

  time
end

puts queue([2, 5, 3, 6, 4], 3)
