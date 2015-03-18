puts "Enter books one at a time, enter 'exit' when done."

books = []

while true
  print "Enter book name: "
  book = gets.chomp.downcase

  break if book == "exit"

  books << book
end

puts books.sort