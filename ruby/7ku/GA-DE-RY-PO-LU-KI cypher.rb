# frozen_string_literal: true

# GA-DE-RY-PO-LU-KI cypher
# https://www.codewars.com/kata/592a6ad46d6c5a62b600003f/train/ruby

def encode(str)
  str.tr('gaderypolukiGADERYPOLUKI', 'agedyropulikAGEDYROPULIK')
end

alias decode encode

p encode('GBCE')
p encode('Gug hgs g cgt')

p decode('agedyropulik')
