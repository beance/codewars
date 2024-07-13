# frozen_string_literal: true

# SantaClausable Interface
# https://www.codewars.com/kata/52b50a20fa0e77b304000103/train/ruby
def is_santa_clausable(obj)
  %i[say_ho_ho_ho distribute_gifts go_down_the_chimney].all? { |m| obj.respond_to?(m) }
end
