# frozen_string_literal: true

# Oh dear God! Is it bugged?
# https://www.codewars.com/kata/580e67ae22e42d797000015e/train/ruby

def is_it_bugged(code)
  regex = /^\d{2}-\d{2}-\d{4} \d{2}:\d{2}$/
  !!(code =~ regex)
end
p is_it_bugged('01-09-2016 01:20')
