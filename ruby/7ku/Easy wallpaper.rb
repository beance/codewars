# frozen_string_literal: true

# Easy wallpaper
# https://www.codewars.com/kata/567501aec64b81e252000003/train/ruby

def wallpaper(l, w, h)
  return 'zero' if l.zero? || w.zero? || h.zero?

  numbers = %w[zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen
               seventeen eighteen nineteen twenty]
  numbers[((l + w) * 2 / 0.52 / (10 / h) * 1.15).ceil]
end

# p wallpaper(6.3, 4.5, 3.29)
p wallpaper(0.0, 5.4, 3.33)
