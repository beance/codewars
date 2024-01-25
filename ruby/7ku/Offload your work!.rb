# frozen_string_literal: true

# Offload your work!
# https://www.codewars.com/kata/5b3e1dca3da310a4390000f3/train/ruby

def work_needed(project_minutes, freelances)
  result = project_minutes - freelances.sum { |x| x[0] * 60 + x[1] }
  result <= 0 ? 'Easy Money!' : "I need to work #{result / 60} hour(s) and #{result % 60} minute(s)"
end

# p work_needed(60, [[1, 0]]) # "Easy Money!"
# p work_needed(60, [[0, 0]]) # "I need to work 1 hour(s) and 0 minute(s)")
# p work_needed(141, [[1, 55], [0, 25]]) # "I need to work 0 hour(s) and 1 minute(s)")
p work_needed(29_012,
              [[22, 38], [52, 13], [87, 46], [33, 8], [83, 46], [76, 1], [98, 25], [62, 43], [60, 52], [81, 15], [27, 25], [3, 26],
               [50, 12], [44, 48], [66, 13]])
