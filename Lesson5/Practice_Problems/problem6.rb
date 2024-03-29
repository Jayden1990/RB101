# Practice Problem 6
# One of the most frequently used real-world string properties is that of "string substitution", 
# where we take a hard-coded string and modify it with various parameters from our program.

# Given this previously seen family hash, print out the name, age and gender of each family member:
# (Name) is a (age)-year-old (male or female).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}"
end

###### Launch School's solution below:

munsters.each_pair do |name, details|
  puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
end

# In this case we need to access both the key (each family member's name) 
# and the value (the inner hashes containing the details), 
# so we need to use Hash#each_pair or Hash#each with two block parameters.