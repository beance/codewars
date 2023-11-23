# frozen_string_literal: true

# https://www.codewars.com/kata/56fe17fcc25bf3e19a000292/train/ruby

def v1(n, p)
  v_eff(n, p)
end

def u1(n, p)
  u_eff(n, p)
end

def v_eff(n, p)
  (2 * n + 1) * p
end

def u_eff(n, p)
  (n + 1) * p
end

p v1(19, 11) == 429
p v1(18, 144) == 5328

p u1(19, 11) == 220
p u1(3, 69) == 276

p v_eff(200_000, 5_000_000)
