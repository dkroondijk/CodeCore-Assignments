print "Enter a sentence: "
text = gets.chomp.downcase

letter_array = text.split(%r{\s*})

letter_hash = Hash.new(0)

letter_array.each do |letter|
  letter_hash[letter] += 1
end

puts letter_hash