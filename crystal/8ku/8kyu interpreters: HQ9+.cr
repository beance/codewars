# 8kyu interpreters: HQ9+

def hq9(code)
  case code
  when "H"
    return "Hello World!"
  when "Q"
    return "Q"
  when "9"
    song = ""
    99.downto(1) do |i|
      song += "#{i} bottle#{"s" unless i == 1} of beer on the wall, #{i} bottle#{"s" unless i == 1} of beer.\n"
      song += "Take one down and pass it around, #{i - 1 == 0 ? "no more" : (i - 1).to_s} bottle#{"s" unless i - 1 == 1} of beer on the wall.\n"
    end
    song += "No more bottles of beer on the wall, no more bottles of beer.\n"
    song += "Go to the store and buy some more, 99 bottles of beer on the wall."
    return song
  else
    return nil
  end
end

puts hq9("Q")
