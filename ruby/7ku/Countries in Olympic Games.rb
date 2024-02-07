# frozen_string_literal: true

# Countries in Olympic Games
# https://www.codewars.com/kata/566df9b0911626095b000013/train/ruby

def order_countries(list_of_countries = {})
  list_of_countries.map do |key, value|
    [key, value.gsub(/\D+,/, "").split(",").map(&:to_i)]
  end.sort do |a, b|
    (a[1] <=> b[1]).nonzero? || (b[0] <=> a[0])
  end.reverse.to_h.keys.join("-")
end

def order_countries(medals = {})
  medals.keys.sort_by { |country|
    medals[country].split(',').map{|x| -x.to_i} + [country]
  }.join '-'
end

list = {"Uruguay" => "Uruguay,183397,58839,141437", "Paraguay" => "Paraguay,301635,100303,166041", "Germany" => "Germany,191581,185568,83188", "Finland" => "Finland,61579,154160,83168", "Korea-N" => "Korea-N,56655,33026,478041", "Korea_S" => "Korea_S,232617,237748,367898", "China-Taipe" => "China-Taipe,89088,311508,924672", "China" => "China,736368,739238,207288", "Iran" => "Iran,448716,430216,374688", "Iraq" => "Iraq,46737,81317,589876", "USA" => "USA,246529,496965,10862", "Norway" => "Norway,58930,98304,354956", "UEA" => "UEA,399261,539519,127167"}
p order_countries(list) #== "Korea-Iran-Iraq-Ahina-China-Chinb" # "Norway-Finland-Korea-Iran-Iraq-China"
