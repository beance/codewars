# frozen_string_literal: true
# Array comparator
# https://www.codewars.com/kata/561046a9f629a8aac000001d/train/ruby

def match_arrays(v, r)
  (v & r).size
end

p match_arrays(['Erlang','JavaScript'], ['Go', 'C++','Erlang'])
p match_arrays(['Erlang','JavaScript'], ['Go', 'C++','Python'])
