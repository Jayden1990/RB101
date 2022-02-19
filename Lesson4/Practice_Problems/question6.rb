# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# The return value of the code above will be => 11
# because what #pop does is that it removes the last element
# in an array and returns it destructively. At that point, we run 
# the size method on the return value which is 'caterpillar'. There are
# 11 characters in the word caterpillar, therefore our return value is 11.