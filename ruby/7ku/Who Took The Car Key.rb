# frozen_string_literal: true

# Who Took The Car Key?
# https://www.codewars.com/kata/57a23c2acf1fa514d0001034/train/ruby

def who_took_the_car_key(message)
  message.map { |e| e.to_i(2).chr }.join
end

p who_took_the_car_key %w[01000001 01101100 01100101 01111000 01100001 01101110 01100100 01100101
                          01110010]
