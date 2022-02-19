# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# the output of bar(foo) is "no" because foo returns "yes"
# and according to the bar method; if the parameter passed to
# the method != "no", then the return value is "no".