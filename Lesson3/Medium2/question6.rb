# How could the following method be simplified without changing its return value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# - MY SOLUTION.

def color
  (color == 'blue' || color == 'green') ? true : false
end

# LAUNCH SCHOOL SOLUTION

# def color_valid(color)
#   color == "blue" || color == "green"
# end