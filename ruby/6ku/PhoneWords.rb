# frozen_string_literal: false

# https://www.codewars.com/kata/635b8fa500fba2bef9189473/train/ruby

NUMBERS = {
  2 => 'a',
  22 => 'b',
  222 => 'c',
  3 => 'd',
  33 => 'e',
  333 => 'f',
  4 => 'g',
  44 => 'h',
  444 => 'i',
  5 => 'j',
  55 => 'k',
  555 => 'l',
  6 => 'm',
  66 => 'n',
  666 => 'o',
  7 => 'p',
  77 => 'q',
  777 => 'r',
  7777 => 's',
  8 => 't',
  88 => 'u',
  888 => 'v',
  9 => 'w',
  99 => 'x',
  999 => 'y',
  9999 => 'z'
}.freeze

def phone_words(str)
  count = 1
  prev = 0
  tmp = []
  str.split('1').map do |e|
    e.chars.each_with_index do |c, index|
      case c
      when '0'
        tmp << ' '
      when e.chars[index + 1]
        count += 1
      else
        z = NUMBERS[e[prev..index].to_i]
        z = multi(c, count) if z.nil?
        count = 1
        prev = index + 1
        tmp << z
      end
    end
    count = 1
    prev = 0
  end
  tmp.join
end

def multi(c, count)
  str = ''
  if %w[7 9].include?(c)
    (c * count).chars.each_slice(4) do |pair|
      str += NUMBERS[pair.join.to_i]
    end
  else
    (c * count).chars.each_slice(3) do |pair|
      str += NUMBERS[pair.join.to_i]
    end
  end
  str
end

# p phone_words('777777')
# p phone_words('443355555566604466690277733099966688')
# p phone_words('833998')
p phone_words('443355555566604466690277733099966688')
# p phone_words('22266631339277717777')

PATTERN = /0|2{1,3}|3{1,3}|4{1,3}|5{1,3}|6{1,3}|7{1,4}|8{1,3}|9{1,4}/.freeze
TRANS   = ' ||abc|def|ghi|jkl|mno|pqrs|tuv|wxyz'.split('|')

def phone_words(str)
  str.scan(PATTERN).map { |m| TRANS[m[0].to_i][m.size - 1] }.join
end

CODES = [
  [' '], [],
  %w[a b c],
  %w[d e f],
  %w[g h i],
  %w[j k l],
  %w[m n o],
  %w[p q r s],
  %w[t u v],
  %w[w x y z]
].freeze

def phone_words(str)
  str.chars.chunk(&:to_i).inject('') do |s, (i, a)|
    arr = CODES[i]
    next s if arr.empty?

    m = a.length - 1
    n = arr.length
    s + arr.last * (m / n) + arr[m % n]
  end
end
