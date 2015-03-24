puts "Please enter data to add to array, type 'exit' when done."

# data = nil

my_array = []

# while data != "exit"
#   print "Enter data: "
#   data = gets.chomp.downcase  
#   my_array << data
# end

# puts "You've entered #{my_array.length - 1} inputs"
# puts my_array

while true
  print "Enter data: "
  data = gets.chomp.downcase

  break if data == "exit"

  my_array << data
end

puts "You've entered #{my_array.length} inputs"
puts my_array