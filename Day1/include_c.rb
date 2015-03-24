print "Please enter some text: "

words = gets.chomp.downcase
# letters = words.downcase.chars

# count = 0

# letters.each do |letter|
#   if letter == "c"
#     count += 1
#   end
# end

# if count > 0
#   puts "Yes it has C"
# else
#   puts "There is no C"
# end

if words.include?("c")
  puts "yes it has a C"
else
  puts "There is no C"
end

#some text to test git update