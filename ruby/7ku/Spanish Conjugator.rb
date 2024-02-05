# frozen_string_literal: true

# Spanish Conjugator
# https://www.codewars.com/kata/5a81b78d4a6b344638000183/train/ruby
def conjugate(verb)
  suffix = verb[-2..-1]
  w = verb[0..-3]

  if suffix == "er"
    {verb => [w + "o", w + "es", w + "e", w + "emos", w + "eis", w + "en"]}
  elsif suffix == "ir"
    {verb => [w + "o", w + "es", w + "e", w + "imos", w + "is", w + "en"]}
  elsif suffix == "ar"
    {verb => [w + "o", w + "as", w + "a", w + "amos", w + "ais", w + "an"]}
  end
end

p conjugate("caminar")
# {"caminar" => ["camino", "caminas", "camina", "caminamos", "caminais", "caminan"]}
