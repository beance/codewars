# frozen_string_literal: true
# LinkedList -> Array
# https://www.codewars.com/kata/557dd2a061f099504a000088/train/ruby

def list_to_array(list)
  if list["next"].nil?
    [list["value"]]
  else
    list.map { |i| i[0] == "next" ? list_to_array(i[1]) : i[1] }.flatten
  end
end

def list_to_array(list)
  list.nil? ? [] : [list['value']] + list_to_array(list['next'])
end

lists = [
  {'value'=>1, 'next'=>{'value'=>2, 'next'=>{'value'=>3, 'next'=>nil}}},
  {'value'=>"string", 'next'=>nil},
  {'value'=>true, 'next'=>{'value'=>false, 'next'=>{'value'=>"true", 'next'=>{'value'=>"false", 'next'=>nil}}}},
  {'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>nil}}}}}},
  {'value'=>"foo", 'next'=>{'value'=>"bar", 'next'=>nil}}
]


p list_to_array(lists[2])