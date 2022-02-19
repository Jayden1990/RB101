# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

statement.delete(' ').split('').tally

# OR 

def count_each_letter(string)
  letters_array = string.delete('').split('')
  letters_array.tally
end

# Launch School Result

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

