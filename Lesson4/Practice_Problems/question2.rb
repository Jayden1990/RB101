# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# count will return the number of times the expression inside the block
# is truthy which in this case, will be =>> 2 because there are two different 
# string that have less than 4 characters in length as instructed by the expression
# str.length < 4