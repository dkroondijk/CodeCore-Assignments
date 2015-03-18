words_array = ["hi","hello","you"]

word_length_array = []

words_array.each do |word|
  word_length_array << word.length
end

puts word_length_array