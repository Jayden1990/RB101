# Practice Problem 15
# Given this data structure write some code to return 
# an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

def all_even?(array)
  array.all? do |num|
    num.even?
  end
end

even_hashes = []
arr.map do |sub|
  sub.map do |key, value|
    if all_even?(value) 
    even_hashes << {key => value}
    end
  end
end


# Launch School Solution:

# arr.select do |hsh|
#   hsh.all? do |_, value|
#     value.all? do |num|
#       num.even?
#     end
#   end
# end
# # => [{:e=>[8], :f=>[6, 10]}]