my_array = [1,4,5,23,14,"Hello there", false, nil]

large_number_array = []

my_array.each do |x|
  if x.is_a? Integer
    if x > 10
      large_number_array << x
    end
  end
end

puts large_number_array