# In the age hash: remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject! {|name, value| name if value > 100 }

p ages