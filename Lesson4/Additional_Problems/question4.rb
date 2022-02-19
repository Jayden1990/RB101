# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


ages.values.sort[0]

def minimum_age(hash)
  youngest = hash.values.sort[0]
  youngest
end

p minimum_age(ages)


# Launch School solution

ages.values.min