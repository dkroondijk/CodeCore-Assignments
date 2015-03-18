questions = ["What is your name", "How are you?", "Is that right?", 
  "Are you John?", "How is everything?"]

questions.select! do |string|
  string.length > 15
end

puts questions
