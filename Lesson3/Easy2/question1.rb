# In this hash of people and their age, see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.any? {|name, age| name == 'Soft'}
p ages.include?('Soft')

# LAUNCH SCHOOL solution 

ages.key?("Spot")

# Bonus Answer:

# Hash#include? and Hash#member?