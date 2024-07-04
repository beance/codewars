# frozen_string_literal: true

# Argue the toss
# https://www.codewars.com/kata/5758a91bbd1fdd2033000947/train/ruby

def an_argument(*args)
  return "You didn't give me any arguments." if args.empty?
  str = "You gave me #{args.length} "
  if args.length > 1

    str += "arguments and they are "
    args[0...-1].each { |x| str += "\"#{x}\", " }
    str = str.chomp(", ")
    str += "and \"#{args[-1]}\"."
  else
    str += "argument and it is \"#{args[0]}\"."
  end
  str
end

p an_argument("pigs")
p an_argument("pigs", "giraffes", "unicorns")

