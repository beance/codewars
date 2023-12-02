# frozen_string_literal: true

# Cat and Mouse - 2D Version
#  https://www.codewars.com/kata/57f8842367c96a89dc00018e/train/ruby
def cat_mouse(map, moves)
  return 'boring without two animals' if (map.include?('C') && map.include?('m')) == false

  arr = map.split("\n").map(&:chars)
  pos_mouse = []
  pos_cat = []
  arr.each_with_index do |e, i|
    e.each_with_index do |s, k|
      case s
      when 'C'
        pos_cat = [i, k]
      when 'm'
        pos_mouse = [i, k]
      end
    end
  end
  ((pos_mouse.first - pos_cat.first).abs + (pos_mouse.last - pos_cat.last).abs) <= moves ? 'Caught!' : 'Escaped!'
end

# or
#
def cat_mouse(map, moves)
  return 'boring without two animals' unless map['C'] && map['m']

  columns = map.index("\n")
  cat, mouse = %w[C m].map { |c| map.delete("\n").index(c).divmod(columns) }
  cat.zip(mouse).map { |a, b| (a - b).abs }.inject(:+) <= moves ? 'Caught!' : 'Escaped!'
end

map = ".........C.......\n.................\n.................\n.................\n.................\n.................\n.................\n.................\n.................\n.m...............\n.................\n.................\n.................\n.................\n.................\n.................\n.................\n.................\n................."
p cat_mouse(map, 10)
