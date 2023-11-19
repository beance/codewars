# frozen_string_literal: true

# https://www.codewars.com/kata/592421cb7312c23a990000cf/train/ruby
def look_and_say_sequence(first_element, n)
  sequence = [first_element]

  while sequence.length < n
    current = sequence.last
    count = 1
    new_element = ''

    (1..current.length).each do |i|
      if current[i] == current[i - 1]
        count += 1
      else
        new_element += count.to_s + current[i - 1]
        count = 1
      end
    end
    sequence << new_element
  end
  sequence[n - 1]
end

p look_and_say_sequence('14', 2)
