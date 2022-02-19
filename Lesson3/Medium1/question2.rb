# The result of the following statement will be an error:
# Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is " + (40 + 2) # Puts error message because integer value needs to be converted to string.

puts "the value of 40 + 2 is" + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"

# This will raise an error TypeError: no implicit conversion of Integer into String because (40+2) 
# results in an integer and it is being concatenated to a string.