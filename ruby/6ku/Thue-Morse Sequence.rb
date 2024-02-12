# Thue-Morse Sequence
# https://www.codewars.com/kata/591aa1752afcb02fa300002a/train/ruby

def thue_morse(n)
  sequence = "0"
  while sequence.length < n
    sequence += sequence.tr("01", "10")
  end
  sequence[0, n]
end

p thue_morse(5)
