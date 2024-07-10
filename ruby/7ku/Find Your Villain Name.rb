# frozen_string_literal: true

# Find Your Villain Name
# https://www.codewars.com/kata/536c00e21da4dc0a0700128b/train/ruby

require 'date'
FIRSTNAME = ['The Evil', 'The Vile', 'The Cruel', 'The Trashy',
             'The Despicable', 'The Embarrassing', 'The Disreputable',
             'The Atrocious', 'The Twirling', 'The Orange',
             'The Terrifying', 'The Awkward'].freeze
LASTNAME = ['Mustache', 'Pickle', 'Hood Ornament',
            'Raisin', 'Recycling Bin', 'Potato', 'Tomato', 'House Cat',
            'Teaspoon', 'Laundry Basket'].freeze
def get_villain_name(birthday)
  "#{FIRSTNAME[birthday.month - 1]} #{LASTNAME[birthday.day.to_s[-1].to_i]}"
end

p get_villain_name(Date.new(2000, 1, 1))
