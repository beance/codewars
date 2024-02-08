# frozen_string_literal: true

# Do you know how to make Query String?
# https://www.codewars.com/kata/595249fc10b69f4f7a000003/train/ruby
require "uri"
def to_query_string(data)
  URI.encode_www_form(data.sort)
end

def to_query_string(data)
  data.map { |k, v| (v.is_a?(Array) ? v : [v]).map { |y| "#{k}=#{y}" }.join("&") }.sort.join("&")
end
# p to_query_string({"bar" => [2, 4], "foo" => [1, 3]}) == "bar=2&bar=4&foo=1&foo=3"
# p  to_query_string({"bar"=>2, "foo"=>1}) #==   "bar=2&foo=1"
p to_query_string({"f" => 1, "pippi" => "a", "a" => "pippi", "2" => 4, "d" => "c", "e" => "h", "9" => 4, "c" => "CodeWars", "5" => 8, "1" => "f", "bar" => "bar"})
#== "1=f&2=4&5=8&9=4&a=pippi&bar=bar&c=CodeWars&d=c&e=h&f=1&pippi=a"
"f=1&pippi=a&a=pippi&2=4&d=c&e=h&9=4&c=CodeWars&5=8&1=f&bar=bar"
