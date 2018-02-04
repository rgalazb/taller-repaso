hash = {"x": 1, "y":2}

hash[:z] = 3

hash[:x] = 5
hash.delete(:y)

puts 'yeah' if hash.has_key?(:z)

hash_inv = hash.invert

puts hash_inv
