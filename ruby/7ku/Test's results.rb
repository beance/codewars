# frozen_string_literal: true

# Test's results
# https://www.codewars.com/kata/599db0a227ca9f294b0000c8/train/ruby

def results(marks)
  h = marks.count { |e| e >= 9 }
  a = marks.count { |e| [7, 8].include?(e) }
  l = marks.count { |e| e <= 6 }
  str = nil
  str = ('They did well' if l.zero? && (h.zero? || a.zero?))
  [(marks.sum / marks.size.to_f).round(3), { 'h' => h, 'a' => a, 'l' => l }, str].compact
end
p results([10, 9, 9, 10, 9, 10, 9])
