# frozen_string_literal: true

# Alan Partridge I - Partridge Watch
# https://www.codewars.com/kata/5808c8eff0ed4210de000008/train/ruby

def part(arr)
  terms = %w[Partridge PearTree Chat Dan Toblerone Lynn AlphaPapa Nomad]
  str = "Mine's a Pint"
  arr.each { |a| str += "!" if terms.include?(a) }
  str.include?("!") ? str : "Lynn, I've pierced my foot on a spike!!"
end

p part(["Grouse", "Partridge", "Pheasant"])
