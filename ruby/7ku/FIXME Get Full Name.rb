# frozen_string_literal: true

# FIXME: Get Full Name
# https://www.codewars.com/kata/597c684822bc9388f600010f/train/ruby

class Dinglemouse
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def get_full_name
    "#{@first_name} #{@last_name}".strip
  end
end

p Dinglemouse.new('Clint', 'Eastwood').get_full_name
