# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# The Array#take method works in a way where it starts on the very first
# index of the array [0], and then from there it returns the amount of elements
# passed through the argument in a new array. That's not to say, it'll count by indices.
# For instance, in the problem above. It will return [1, 2] because we passed 2 as an argument
# and the first 2 element in our array are 1 and 2. Note: This method is not destructive.
# We're able to find this information out by referring to the Array class documentation and 
# reading the information on the Array#take method. A good way to test this is by using irb.