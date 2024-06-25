# frozen_string_literal: true

# Split The Bill
# https://www.codewars.com/kata/5641275f07335295f10000d0/train/ruby
#

def split_the_bill(x)
  avg = x.values.sum.to_f / x.size
  x.each { |k, _v| x[k] = (x[k] - avg).round(2) }
end

p split_the_bill({ 'A' => 20, 'B' => 15, 'C' => 10 })
# {'A'=>5.00, 'B'=>0.00, 'C'=>-5.00}
