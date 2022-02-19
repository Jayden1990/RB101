# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.

p finding_number = (10..100).to_a

puts finding_number.include?(42)

# LAUNCH SCHOOL SOLUTION

# (10..100).cover?(42)