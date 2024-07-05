def compute(&block : -> String) : String
  yield
end

def compute : String
  "Do not compute"
end

# Примеры использования

puts compute                     # => "Do not compute"
puts compute { "Hello, World!" } # => "Hello, World!"
