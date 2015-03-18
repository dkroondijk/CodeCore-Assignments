print "Please enter a sentence: "
sentence = gets.chomp

puts rev_sentence = sentence.split(" ").reverse.join(" ")
