# frozen_string_literal: true

# Celebrity Baby Names
# https://www.codewars.com/kata/577d5ce442a8d81e790002b2/train/ruby

def valid_name(arr)
  return "You must test at least one name." if arr.empty?
  return "Congratulations, you can choose any name you like!" if arr.size == 1

  tmp = arr[0][0].downcase
  arr.all? do |name|
    if tmp == name[0].downcase
      tmp = name[-1]
      true
    else
      false
    end
  end ? "Congratulations, your baby names are compatible!" : "Back to the drawing board, your baby names are not compatible."
end

# p valid_name(["Pippi", "Saint", "Theodora", "Ava", "Apple", "Egypt", "Tallulah", "Harlow", "Willow", "Weston", "Nala", "Atlas", "Silas", "Sundance", "Esmeralda", "Angel", "Lily-Rose", "Ever", "Rebel", "Lourdes"]) #=="Back to the drawing board, your baby names are not compatible."
# p valid_name(["Peaches", "Saint", "Theodora", "Ava", "Apple", "Egypt", "Tallulah", "Harlow", "Willow", "Weston", "Nala", "Atlas", "Silas", "Sundance", "Esmeralda", "Angel", "Lily-Rose", "Ever", "Rebel", "Lourdes"]) #== "Congratulations, your baby names are compatible!"
p valid_name(["Jaden"])