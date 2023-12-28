# frozen_string_literal: true
# The Supermarket Queue
# https://www.codewars.com/kata/57b06f90e298a7b53d000a86/train/ruby

def queue_time(customers, n)
  queue = Array.new(n, 0)
  customers.each do |customer|
    queue[queue.index(queue.min)] += customer
  end
  queue.max
end

p queue_time([2,2,3,3,4,4], 2) #9