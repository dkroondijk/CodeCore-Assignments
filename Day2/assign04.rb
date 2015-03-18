n = 12

# fib_array = [0,1]

# for num in 1..n-2
#   x = fib_array[fib_array.length - 1] + fib_array[fib_array.length - 2]
#   fib_array << x
# end

# puts fib_array

# fib_array = [1]

# for num in 1..n-2
#   x = fib_array[fib_array.length - 1] + fib_array[fib_array.length - 2]
#   fib_array << x
# end

# puts fib_array

fib_array = []

current = 1
next_num = 1
last_num = 0

for num in 1..n
  fib_array << next_num
  next_num = current + last_num
  last_num = current
  current = next_num
end

puts fib_array





