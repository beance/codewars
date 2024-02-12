# IPv4 Parser
# https://www.codewars.com/kata/556d120c7c58dacb9100008b/train/ruby

def ipv4__parser(ip_addr, mask)
  x = ip_addr.split(".").zip(mask.split(".")).map { |a, b| (a.to_i & b.to_i) }.join(".")
  y = ip_addr.split(".").zip(x.split(".")).map { |a, b| (a.to_i - b.to_i) }.join(".")
  [x, y]
end

p ipv4__parser("192.168.50.1", "255.255.255.0")
