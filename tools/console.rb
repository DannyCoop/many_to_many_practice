require_relative '../config/environment.rb'

# new objects
#Tourist
bob = Tourist.new("Bob")
steve = Tourist.new("Steve")
ben = Tourist.new("Ben")

#landmarks
park = Landmark.new("down town park", "Orlando")
big_bottle = Landmark.new("Bigg Bottle", "DC")
the_rocks_gym = Landmark.new("The Rocks Gym", "San Diego")
the_mall = Landmark.new("The Mall", "DC")

#trips
trip1 = Trip.new(park, bob)
trip2 = Trip.new(big_bottle, steve)
trip3 = Trip.new(the_rocks_gym, ben)


#test tourist
puts "- should return **all** of the `Tourist` instances"

puts Tourist.all.include?(bob)

puts "returns the name of the given `Tourist`"
puts bob.name.eql?("Bob")

puts "- given a string of a name, returns the **first tourist** whose  name matches"
puts Tourist.find_by_name("Steve").eql?(steve)

puts "- returns an **array** of all the trips taken by the given `Tourist`"
print bob.trips.include?(trip1)

puts "- returns an **array** of all the landmarks for the given `Tourist`"
puts bob.landmarks.include?(park)

puts "- `Tourist#visit_landmark(landmark)` should create a new trip for that tourist to the given landmark"
steve.visit_landmark(the_rocks_gym)
puts steve.trips.count.eql?(2)

puts "- `Tourist#never_visited` should return an array of all the landmarks this tourist has never traveled to"
puts steve.never_visited

#--Landmark stuff
puts "- returns an **array** of all landmarks"
puts Landmark.all.include?(big_bottle)

puts "- returns an **array** of all landmarks in that city"
puts Landmark.find_by_city("DC").include?(the_mall)

puts "- returns an **array** of all the trips taken to a given landmark"
puts the_rocks_gym.trips.include?(trip3)

puts "- returns an **array** of all the tourists at a given landmark"
puts big_bottle.tourists.include?(steve)

puts "- returns an array of all trips"
puts Trip.all.include?(trip3)

puts "- returns the tourist who has taken that trip"
puts trip3.tourist == ben

puts "- returns the landmark visited on the trip"
puts trip2.landmark == big_bottle

# binding.pry
