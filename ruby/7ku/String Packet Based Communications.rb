# frozen_string_literal: true

# String Packet Based Communications
# https://www.codewars.com/kata/5b2be37991c7460d17000009/train/ruby

INSTRUCTIONS = { '0F12' => :+, 'B7A2' => :-, 'C3D9' => :* }.freeze

def communication_module(packet)
  head, inst, d1, d2, foot = packet.scan(/.{4}/)
  r = d1.to_i.send(INSTRUCTIONS[inst], d2.to_i).clamp(0, 9999)
  format('%sFFFF%04d0000%s', head, r, foot)
end

p communication_module('H1H10F1200120008F4F4') # "H1H1FFFF00200000F4F4"
