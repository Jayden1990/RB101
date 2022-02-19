# Starting with the string:
# show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

puts "Four score and " + famous_words

puts "Four score and #{famous_words}."

# LAUNCH SCHOOL ANSWER below

"Four score and " + famous_words

famous_words.prepend("Four score and ")

"Four score and " << famous_words