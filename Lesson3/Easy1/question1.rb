# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# I would expect the code to print out 1, 2, 2, 3.
# It would be printed on its own respective line since we're using 'puts'.
# The reason it print the original value of variable numbers is because
# uniq is not a destructive method. If we were to use uniq! instead, then we would've had a different result.