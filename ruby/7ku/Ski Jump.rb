# frozen_string_literal: true

# Ski Jump
# https://www.codewars.com/kata/57ed7214f670e99f7a000c73/train/ruby

def ski_jump(mountain)
  res = mountain.sum { |_x| (1.5 * mountain.size * 9) / 10.0 }.round(2)
  if res < 10
    "#{'%.2f' % res} metres: He's crap!"
  elsif res > 10 && res < 25
    "#{'%.2f' % res} metres: He's ok!"
  elsif res > 20 && res < 50
    "#{'%.2f' % res} metres: He's flying!"
  else
    "#{'%.2f' % res} metres: Gold!!"
  end
end

p ski_jump(['*', '**', '***'])
