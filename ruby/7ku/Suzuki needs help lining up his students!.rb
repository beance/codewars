# frozen_string_literal: true

# Suzuki needs help lining up his students!
# https://www.codewars.com/kata/5701800886306a876a001031/train/ruby
#
def lineup_students(students)
  students.split(" ").sort { |x, y| (x.length <=> y.length) == 0 ? x <=> y : x.length <=> y.length }.reverse
end

def lineup_students(students)
  students.split.sort_by { |name| [name.length, name] }.reverse
end

def lineup_students(students)
  students.split.sort { |a, b | [b.length, b] <=> [a.length, a] }
end

s1 = "Shunichi  Shinichi  Norio  Yoshito  Nori  Satoru  Shiro  Shin"
lst1 = ["Shunichi", "Shinichi", "Yoshito", "Satoru", "Shiro", "Norio", "Shin", "Nori"]
p lineup_students(s1) == lst1
