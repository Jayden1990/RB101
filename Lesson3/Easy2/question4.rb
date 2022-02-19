# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as trainig your pet dinosaur."

p advice.include?('Dino')

# LAUNCH SCHOOL SOLUTION

advice.match?("Dino")

# Note that this is not a perfect solution, as it would match any substring with Dino in it.