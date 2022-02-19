# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

new_array = flintstones.to_a 

final_array = new_array[2]

p final_array

# LAUNCH SCHOOL solution

flintstones.assoc("Barney")
#=> ["Barney", 2]