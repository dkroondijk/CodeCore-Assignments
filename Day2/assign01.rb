my_array = ["a","b","c","d","e"]

my_rev_array = []

a = my_array.map.with_index do |element, index|
  my_rev_array[index] = my_array[my_array.length - 1 - index]
end

puts a
