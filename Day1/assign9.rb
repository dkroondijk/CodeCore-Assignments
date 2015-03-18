print "Enter a number: "

num = gets.chomp.to_i

if num % 3 == 0
  puts num ** 3
elsif num % 2 == 0
  puts num ** 2
else
  puts num
end