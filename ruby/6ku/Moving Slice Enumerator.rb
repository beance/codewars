# frozen_string_literal: true
# Moving Slice Enumerator
# https://www.codewars.com/kata/56369dd44ac96691150000f3/train/ruby

def moving_slice_enumerator(string, min)
  Enumerator.new do |res|
    length = string.length

    length.downto(min) do |slice_length|
      0.upto(length - slice_length) do |start|
        res << string[start, slice_length]
      end
    end
  end
end


p moving_slice_enumerator("A23456",3).to_a