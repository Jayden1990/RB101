# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

def find_vowels(letter) 
  vowels = %w(a e i o u)
   vowels.include?(letter)
 end
 
individual_letters = hsh.values
 
individual_letters.map do |sub|
   sub.map do |strings|
     new = strings.chars
       new.map do |st|
        puts st if find_vowels(st)
     end
   end
 end

#  LAUNCH SCHOOL SOLUTION BELOW:

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end