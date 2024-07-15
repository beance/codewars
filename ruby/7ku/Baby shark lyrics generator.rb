# frozen_string_literal: true

# Baby shark lyrics generator
# https://www.codewars.com/kata/5d076515e102162ac0dc514e/train/ruby
#
def baby_shark_lyrics
  f = "#{"%s shark, doo doo doo doo doo doo\n" * 3}%s shark!\n"
  s = 'Baby,Mommy,Daddy,Grandma,Grandpa'.split(',').map { |n| format(f, n, n, n, n) }.join
  s + "#{"Let's go hunt, doo doo doo doo doo doo\n" * 3}Let's go hunt!\nRun away,…"
end
p baby_shark_lyrics
