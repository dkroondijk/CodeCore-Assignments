print "Please enter a word: "
word = gets.chomp

if word.reverse == word
  puts "This is a palindrome."
else
  puts "Just another word..."
end