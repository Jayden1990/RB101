# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name

# -----------------------------------------

# Just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not Ruby syntax. 
# Therefore, you really don't know what the method is doing, even if it ends in those characters -- 
# it depends on the method implementation. The other uses are actual Ruby syntax:

# != means "not equals"
# ? : is the ternary operator for if...else
# !!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
# !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.