limit = 15 # we get an error because of where this variable is defined.

def fib(first_num, second_num)
  # where variable limit should be defined, so it's within the scope of this method.
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# # We could've also went ahead and passed a third argument into our fib method.
# The only way I personally wouldn't have reached this conclusion was if the limit 
# variablle was a constant variable for some reason.