# frozen_string_literal: true

# Parts of a list
# https://www.codewars.com/kata/56f3a1e899b386da78000732/train/ruby

def partlist(a)
  (1...(a.length)).map { |x| [a[0, x].join(' '), a[x..-1].join(' ')] }
end

a = %w[az toto picaro zone kiwi]
p partlist(a)
