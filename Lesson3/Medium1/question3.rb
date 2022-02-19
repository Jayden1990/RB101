while divisor > 0
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end

# Bonus Answer 1
# Allows you to determine if the result of the division is an integer number (no remainder).

# Bonus Answer 2
# This is what is the actual return value from the method. 
# Recall that without an explicit return statement in the code, 
# the return value of the method is the last statement executed. 
# If we omitted this line, the code would execute, but the return value of the method would be nil.

