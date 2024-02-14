# frozen_string_literal: false
# Duplicate Array#transpose functionality
# https://www.codewars.com/kata/5736bda2fe240a8bfb000402/train/ruby



def my_transpose(a)
  return nil if a.nil?
  raise ArgumentError, "Input should be an Array" unless a.is_a?(Array)
  return [] if a.empty?

  elen = a[0].length
  alen = a.length
  result = Array.new(elen) { Array.new(alen) }

  0.upto(alen - 1) do |i|
    tmp = a[i]

    raise IndexError, "Element size differs (#{tmp.length} should be #{elen})" if elen != tmp.length

    0.upto(elen - 1) do |j|
      result[j][i] = tmp[j]
    end
  end

  result
end




p my_transpose([[1],[2],[3],[5]])
p my_transpose([[1,6],[2,7],[3,8],[4,9],[5,10]])
# p my_transpose([])
# p my_transpose(nil)