# frozen_string_literal: true

# Simple Fun #318: Sort String
# https://www.codewars.com/kata/5936256f2e2a27edc9000047/train/ruby


def sort_string(s)
  english_chars = s.scan(/[a-zA-Z]/)
  sorted_english_chars = english_chars.sort { |a, b| a.casecmp(b) }
  s.chars.map { |char| english_chars.include?(char) ? sorted_english_chars.shift : char }.join
end

p sort_string("c b a")
p sort_string("cCBbAa")
p sort_string(" MkWD{RB=//k-^ J@,xH Vfi uAz+$ kV _[ }a!}%pSBwn !kKB (b  q PQF +}wS  .kfU r wFNEs#NsR UVMdG")
#" AaBB{Bb=//D-^ d@,Ef FfF GHi+$ Jk _[ }k!}%kkKkM !MnN (N  p PqQ +}Rr  .RSS s suUUV#VVW wwwxz"