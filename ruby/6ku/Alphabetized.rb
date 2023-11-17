# frozen_string_literal: true
# https://www.codewars.com/kata/5970df092ef474680a0000c9/train/ruby


def alphabetized(s)
  s.tr('^A-Za-z', '').chars.sort(&:casecmp).join
end

p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z")
