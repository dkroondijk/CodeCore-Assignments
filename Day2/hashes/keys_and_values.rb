my_hash = {a: "123", b: "345", c: "678", d: "910"}

key_value_array = []

my_hash.each do |key, value|
  key_value_array << key.to_s + value
end

puts key_value_array