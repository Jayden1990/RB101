# In the previous practice problem we added Dino to our array like this:

# Copy Code
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.insert(6, 'Dino', 'Hoppy')

p flintstones

# LAUNCH SCHOOL solution


flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain


p flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item