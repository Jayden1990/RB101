# Given the array below
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = Hash.new
counter = 0

loop do

  current_key = flintstones[counter]
  hash[current_key] = counter
  counter +=1
  break if counter == flintstones.size
end

p hash