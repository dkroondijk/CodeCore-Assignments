puts "Please enter your first name, last name, city of birth and age.
      Enter 'exit' when done."

personal_info = Hash.new("unknown")

while true
  print "Enter first name: "
  first_name = gets.chomp

  print "Enter last name: "
  last_name = gets.chomp

  print "Enter city of birth: "
  birth_city = gets.chomp

  print "Enter age: "
  age = gets.chomp.to_i

  personal_info = {first_name: first_name, last_name: last_name, 
    birth_city: birth_city, age: age}

  break

end

personal_info.each do |info, value|
  puts "Your name is #{first_name} #{last_name}, 
  you were born in #{birth_city}, and you're #{age} years old."
end 