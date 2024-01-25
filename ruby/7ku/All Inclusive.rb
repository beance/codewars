# frozen_string_literal: true

# All Inclusive?

def contain_all_rots(string, arr)
  return true if string.empty?

  string.chars.each_with_index.map do |_char, index|
    string[index..-1] + string[0...index]
  end.all? { |rotation| arr.include?(rotation) }
end

p contain_all_rots('bsjq', %w[bsjq qbsj sjqb twZNsslC jqbs])
