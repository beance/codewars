# frozen_string_literal: true
# Which section did you scroll to?

def get_section_id(scroll_y, sizes)
  return -1 if scroll_y >= sizes.sum
  sizes.each_with_index do |size, i|
    return i if scroll_y < sizes[0..i].sum
  end
end

p get_section_id(1600, [300, 200, 400, 600, 100])