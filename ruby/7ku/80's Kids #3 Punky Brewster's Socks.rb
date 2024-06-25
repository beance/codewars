# frozen_string_literal: true

# 80's Kids #3: Punky Brewster's Socks
# https://www.codewars.com/kata/5662292ee7e2da24e900012f/train/ruby

def get_socks(name, socks)
  if name == 'Punky'
    socks.uniq.size > 1 ? socks.uniq[0..1] : []
  else
    socks.sort!.select { |s| socks.count(s) > 1 }[0..1] || []
  end
end

p get_socks('Henry',
            ['argyle', 'yellow', 'torn sock', 'yellow', 'red', 'dirty sock', 'green', 'silver', 'pink', 'yellow', 'blue', 'silver',
             'red', 'silver', 'pink', 'silver', 'green', 'argyle', 'silver', 'blue', 'dirty sock', 'silver', 'blue', 'red'])
