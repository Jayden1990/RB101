# The Ruby Array class has several methods for removing items from the array. 
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
numbers.delete(1)

# On line 8 at the delete_at method would delete the element at the [1] index.
# On line 9 the .delete method would just delete the actual 1 integer in the numbers array.