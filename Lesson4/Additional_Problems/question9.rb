# As we have seen previously we can use some built-in string methods to change the case of a string. 
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize. 
# This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. 
# Write your own version of the rails titleize implementation.

words = "the flintstones rock"

words_seperated = words.split

def capitalize_words(string)
  counter = 0
  loop do
    break if counter == string.length
    
    string[counter].capitalize!
    counter += 1
  end
  string.join(' ')
end

capitalize_words(words_seperated)

# ----------------------

words_seperated = words.split

words_seperated.map do |word|
  word.capitalize!
end

words_seperated.join(' ')