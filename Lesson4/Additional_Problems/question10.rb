munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def age_group(people)
  counter = 0

  loop do 
  
    names = people.keys
    specific_name = names[counter]
    age = people[specific_name]["age"]

    kid = (0..17).include?(age)
    adult = (18..32).include?(age)
    senior = (65..500).include?(age)

      if kid
        people[specific_name]["age_group"] = 'kid'
      elsif adult
        people[specific_name]["age_group"] = 'adult'
      else 
        people[specific_name]["age_group"] = 'senior'
      end

      counter += 1 
      break if counter == names.size
  end
  people
end

age_group(munsters)

# # I came to realize that I overcomplicated this problem and tried
# to solve it with a loop as discriptive as possible. Which I do 
# believe was beneficial. But after seeing Launch Schools solution
# I kind of felt defeated. Review case statements more.

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end