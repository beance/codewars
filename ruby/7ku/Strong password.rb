# frozen_string_literal: false

# https://www.codewars.com/kata/57e35f1bc763b8ccce000038/train/ruby

def check_password(password)
  password.match(/^(?=.*[\d])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*?])[\w\d!@#$%^&*?]{8,20}$/) ? 'valid' : 'not valid'
end

p check_password('c+$N*5~v8jI$*')
p check_password('5pagYrsMp5av%XehZL[')
p check_password('BGkFcp=|"jBz?DP]')
p check_password('C^h4*IH?p2!L2W5@fg')
p check_password('vvdO9L%$gD7?Ha4W')
p check_password('J7IayKY?xR^')
