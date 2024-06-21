# Simple Fun #62: Draw Rectangle
# https://www.codewars.com/kata/5889ae4f7af7f99a9a000019/train/ruby

def draw_rectangle(canvas, rectangle)
  x1, y1, x2, y2 = rectangle

  (x1..x2).each do |x|
    canvas[y1][x] = "-"
    canvas[y2][x] = "-"
  end

  (y1..y2).each do |y|
    if y == y1 || y == y2
      canvas[y][x1] = "*"
      canvas[y][x2] = "*"
    else
      canvas[y][x1] = "|"
      canvas[y][x2] = "|"
    end
  end

  canvas
end


canvas = [
  ["a", "a", "a", "a", "a", "a", "a", "a"],
  ["a", "a", "a", "a", "a", "a", "a", "a"],
  ["a", "a", "a", "a", "a", "a", "a", "a"],
  ["b", "b", "b", "b", "b", "b", "b", "b"],
  ["b", "b", "b", "b", "b", "b", "b", "b"]
]

rectangle = [1, 1, 4, 3]

p draw_rectangle(canvas, rectangle)
