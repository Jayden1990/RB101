=begin
What is PEDAC?
- disciplined, structural approach to solving programming problems
- First process the problem (PEDA), then code with intent (C)

Benefits:
  - will save us time in the long run
  - will help us avoid issues that often arise when we encounter a problem 
    and try and jump straight to coding (i.e. hack and slash coding)
  - Failure to meet requirements of the problem
  - Failure to handle edge cases appropriately
  - Resulting solution is hard to read or maintain
  
Tips:
- Getting stuck is normal
- Make mistakes, learn from the mistakes, continue practicing
- Remember: PEDAC should help you. Find a way to make it work for you. 

P - Understanding the Problem:
- Goal: understand what you're being asked to do
  - Read the problem description
  - Identify expected input and output
  - Establish rules/requirements/define the boundaries of the problem
  - Ask clarifying questions
  - Take your time on this step!
  
Implement a method that calculates the sum of the integers inside a string. E.g. "L12aun3ch Sch3oo45l"


Input: string
Output: Integer (confirm whether in string or integer form when we look at examples) - represents the sum of all integers in the given string

Questions:
- what is the definition of "integer"? Is it single digit or multi-digit?
- what data type does our return value need to be?
- will we need to worry about special characters (dashes, periods, whitespace)?
- what do we do if we get an empty string?
- what do we do if there aren't any integers in the string?

Requirements:
- if there aren't any integers in the string, we'll return 0
- by integers in the context of the string, we mean multi-digit integers, not individual single-digit integers
- we'll return integer, not a string
- we don't need to worry about dashes or period - we only need to deal with positive integers and zero here


E - Examples and Test Cases:
- Goal: further expand and clarify understanding about what you're being asked to do 
- Use examples/test cases to confirm or refute assumptions made about the problem in the previous step
  

p sum_of_integers("L12aun3ch Sch3oo45l") == 63
p sum_of_integers("HE2LL3O W1OR5LD") == 11
p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
p sum_of_integers("HELLO WORLD!") == 0
p sum_of_integers("hi again77") == 77

0 -> zero
O -> oh
1 -> one
l -> llama



D - Data Structures:
- Goal: begin to think logically about the problem
    
    - What data structures could we use to solve this problem?
    - What does our data look like when we get it? (input)
    - What does our data look like when we return it? (output?)
    - What does our data need to look like in the intermediate steps?
    

- Input: string
- Output: integer
- array or string for separation of characters

https://app.coderpad.io/sandbox


A - Algorithm:
- Goal: write out steps to solve the given problem in plain English
  - A logical sequence of steps for accomplishing a task/objective
  - Start high level, but make sure you've thought through and have provided sufficient detail for working through the most difficult parts of the problem
  - Stay programming-language-agnostic
  - Can create substeps for different parts or separate concerns into a helper method
  - You can (and should) revisit your algorithm during the implementation stage if you need to refine your logic
  - Before moving onto implementing the algorithm, check it against a few test cases
  
JAYDEN:
# - Iterate through given string 
# - Find a way to figure out which elements are integers
# - Seperate integer values into their own group
# - Make sure each integer remains true to it's orignal value (multi-digit, single digit)
# - Sum integers
# - Return sum of all integers



IZAYAH:
- create an array
- iterate through string
    - if the character is a numeric string pass into array
      - if multiple numeric string or next to each other, pass them into the array together
    - if not, skip
    - transform valid string into integers
    - return the total sum

EMILY:
-Get the string
-Find all the integers in the string by searching the string left to right 
-Record any values by starting to record when you hit an integer and finish 
 the value when you hit a non-integer character (account for the multi-digit integers)
-Store the values in an array
-Set the sum to zero
-Remove the first value of the array and add to the sum
-Repeat this process through all the values in the array
-Stop when the array is empty
-Display the sum to the user when you have iterated through the array


ERIK:
This might be too high-level
1. step through the string
2. if there's an integer, add it to the array
3. after finished stepping through the array, sum the integers in the array
4. return the array

# 2a. need to check for mult-digit integers - look ahead using regex
# otherwise might need some sort of intermediate data structure to store digits, until reached end of multi-digit


MIKE:
#I think I need to grow in this area.
Start with a string 
Separate the numbers from the letters and add the numbers. 
Two digits together should be treated as one number
Use an array or string to combine numbers
End by outputting integers 

''
15
"L12aun3ch Sch3oo45l"
- check each character in the given string and identify if it's a digit
- keep track of consecutive digits as a string - the separation point for consecutive digits is where we encounter a non-digit character
- keep track of total sum, adding the current "consecutive digits" we've found to the sum whenever we encounter a non-digit character
- ensure we reset the "consecutive digit" store every time we add it to the sum
- once we've checked all characters in string, return the total sum


`sum_of_integers` method:
- accept a string as argument
- create a sum and set it to 0
- create an empty string to keep track of the current consecutive digits
- break down the string into individual characters
- look at each character
  - if the character is a numeric digit (`digit?` helper method)
    - add it to the end of the current consecutive digit string
  - otherwise
    - convert current consecutive digit string to integer, and add it to the sum
    - reset current consecutive digit string
- once finished checking all characters, convert the current consecutive digit string to integer, and add to the sum one final time
- return the sum

`digit?` helper method:
- accept string (i.e. character) as argument
- create array of all digits '0'-'9' as strings
- check if character is contained within the digits array


  

C - Implementing a Solution in Code:
- Goal: translate the algorithm into your programming language of choice
  - Code with intent. Avoid hack and slash 
- TEST FREQUENTLY
  - Use the REPL or run your code as a file
  - When testing your code, always have an idea in place of what you're expecting
  - If you find that your algorithm doesn't work, return there FIRST if needed and THEN fix your code
=end

def sum_of_integers(string)
  sum = 0
  numeric_string = ''
  string.split('').each do |x|
    if digit?(x)
      numeric_string << x
    else
      sum = sum + numeric_string.to_i
      numeric_string = ""
    end
  end
  
  sum += numeric_string.to_i
  sum
end

def digit?(char)
  digit = %w[1 2 3 4 5 6 7 8 9 0]
  digit.include?(char)
end 

# p digit?('L')
# p digit?('a')
# p digit?('1')
# p digit?('0')
# p digit?('9')

p sum_of_integers("L12aun3ch Sch3oo45l") == 63
p sum_of_integers("HE2LL3O W1OR5LD") == 11
p sum_of_integers("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635
p sum_of_integers("HELLO WORLD!") == 0
p sum_of_integers("hi again77") == 77