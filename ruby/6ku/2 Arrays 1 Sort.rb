# frozen_string_literal: true

# 2 Arrays 1 Sort
# https://www.codewars.com/kata/546b22225874d24fbd00005b/train/ruby

def linked_sort(a_to_sort, a_linked, compare = nil)
  compare ||= ->(a, b) { a.to_s <=> b.to_s }
  pairs = a_to_sort.map.with_index { |val, idx| [val, a_linked[idx]] }
  sorted_pairs = pairs.sort { |a, b| compare.call(a[0], b[0]) }
  a_linked.replace(sorted_pairs.map { |pair| pair[1] })
  a_to_sort.replace(sorted_pairs.map { |pair| pair[0] })
end

a_to_sort=[-71,-6,35,0]
a_linked=[0,"Hello",32,true]
res=linked_sort(a_to_sort,a_linked)

res = linked_sort(a_to_sort, a_linked)
p res
