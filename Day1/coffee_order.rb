print "Which coffee shop do you want to order from? "

coffee_shop = gets.chomp

case coffee_shop
  when "Starbucks" then puts "Grande Latte"
  when "Tim Hortons" then puts "Double Double"
  when "Blenz" then puts "Medium Coffee"
  else puts "I don't know this shop"
  end