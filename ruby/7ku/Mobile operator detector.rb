# frozen_string_literal: true

# frozen_string_literal' =>  true
# https' => //www.codewars.com/kata/55f8ba3be8d585b81e000080/train/ruby

CODES = {
  '039' => 'Golden Telecom',
  '050' => 'MTS',
  '063' => 'Life:)',
  '066' => 'MTS',
  '067' => 'Kyivstar',
  '068' => 'Beeline',
  '093' => 'Life:)',
  '095' => 'MTS',
  '096' => 'Kyivstar',
  '097' => 'Kyivstar',
  '098' => 'Kyivstar',
  '099' => 'MTS'

}.freeze

def detect_operator(num)
  result = CODES[num[1..3]]
  result.nil? ? 'no info' : result
end

p detect_operator('80661111841') == 'MTS'
p detect_operator('80671991111') == 'Kyivstar'
p detect_operator('80631551111') == 'Life:)'
p detect_operator('80111551111') == 'no info'




p phone_words('80631551111')