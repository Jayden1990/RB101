flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|name| name.slice(0, 3)}


# launch school solution

# flintstones.map! do |name|
#   name[0, 3]
# end
