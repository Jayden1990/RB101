# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.find_index do |element| 
  element.start_with?('Be')
end

Launch School Response

flintstones.index { |name| name[0, 2] == "Be" }