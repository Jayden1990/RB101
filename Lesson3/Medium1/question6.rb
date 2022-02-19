# What is the output of the following code?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# The answer will be 34, because answer was never actually mutated
# on line 5. += is non-destructive.

# So in conclusion, on line 10 the evaluation is 42 - 8. Which equals 34