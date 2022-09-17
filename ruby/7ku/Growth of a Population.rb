# Growth of a Population
# https://www.codewars.com/kata/563b662a59afc2b5120000c6
#
def nb_year(p0, percent, aug, p)
  arr = [p0]
  loop do
    arr << (arr.last + arr.last * (percent.to_f / 100) + aug).truncate
    break if arr.last >= p
  end
  arr.index(arr.last)
end

p nb_year(1500, 5, 100, 5000)