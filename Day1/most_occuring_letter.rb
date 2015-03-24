my_string = "Hello"

letters = my_string.chars

count = Hash.new(0)

letters.each do |letter|
  count[letter] += 1 
end

count.each do |letter, value|
  puts letter if value == count.values.max
end

