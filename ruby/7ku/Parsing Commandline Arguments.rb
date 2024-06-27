# frozen_string_literal: false

# Parsing Commandline Arguments
# https://www.codewars.com/kata/55538e3de348a57f7e000076/train/ruby

def args(cmd)
  cmd[/[^|&;>]*/].split
end

p args("ls -R /") #== ["ls", "-R", "/"]
p args("cat /tmp/data.txt | less") #== ["cat", "/tmp/data.txt"]
p args("ls -R /&echo not done;echo ok")
