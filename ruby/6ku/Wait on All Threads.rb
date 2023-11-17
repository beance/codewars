# frozen_string_literal: true
# https://www.codewars.com/kata/5424901f48306f746b001fda/train/ruby
def wait_on_threads(threads)
  threads.each(&:join)
end


