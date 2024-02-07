# frozen_string_literal: true

# Find Parallel Octaves
#

def pass_or_fail(harmony)
  harmony.map(&:split).each_cons(2) do |a, b|
    if a != b
      r = a.zip(b).reject { |e| e.uniq.size < 2 }
      return "Fail" if r.uniq.size < r.size
    end
  end
  "Pass"
end

# p pass_or_fail(["mi la mi fa", "la re sol fa", "re do mi do", "do re mi sol"])
# p pass_or_fail(["do re mi fa", "mi fa sol do", "fa ti fa ti", "fa do fa mi"])
# "Pass"
# p pass_or_fail ["do fa sol fa", "mi mi mi sol", "fa fa fa mi", "re fa fa sol"]
# Fail
p pass_or_fail ["la do la mi", "re mi re re", "sol sol sol mi", "re sol mi do"]

# fail
