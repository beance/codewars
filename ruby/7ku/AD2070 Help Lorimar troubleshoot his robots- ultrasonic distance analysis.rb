# frozen_string_literal: true

# AD2070: Help Lorimar troubleshoot his robots- ultrasonic distance analysis
# https://www.codewars.com/kata/57102bbfd860a3369300089c/train/ruby

def sensor_analysis(sensor_data)
  distances = sensor_data.map { |entry| entry[1] }
  mean = distances.sum / distances.size
  variance = distances.map { |distance| (distance - mean)**2 }.sum / (distances.size - 1)
  [mean.round(4), Math.sqrt(variance).round(4)]
end

sensor_data1 = [['Distance:', 116.28, 'Meters', 'Sensor 5 malfunction =>lorimar'],
                ['Distance:', 117.1, 'Meters', 'Sensor 5 malfunction =>lorimar'], ['Distance:', 123.96, 'Meters', 'Sensor 5 malfunction =>lorimar'], ['Distance:', 117.17, 'Meters', 'Sensor 5 malfunction =>lorimar']]
p sensor_analysis(sensor_data1) # [118.6275, 3.5779]
