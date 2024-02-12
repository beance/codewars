# frozen_string_literal: true

# IPv4 to int32
# https://www.codewars.com/kata/52ea928a1ef5cfec800003ee/train/ruby

def ip_to_int32(ip)
  ip.split(".").map { |i| i.to_i.to_s(2).rjust(8, "0") }.join.to_i(2)
end

p ip_to_int32("128.32.10.1")
