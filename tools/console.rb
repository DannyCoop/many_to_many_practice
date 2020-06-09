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

#trips
trip1 = Trip.new(bob, park)
trip2 = Trip.new(steve, big_bottle)
trip3 = Trip.new(ben, the_rocks_gym)


#test tourist
puts "- should return **all** of the `Tourist` instances"

puts Tourist.all.include?(bob)

puts "returns the name of the given `Tourist`"
puts bob.name.eql?("Bob")

puts "- given a string of a name, returns the **first tourist** whose  name matches"
puts Tourist.find_by_name("Steve").eql?(steve)

puts "- returns an **array** of all the trips taken by the given `Tourist`"
print bob.trips



# binding.pry
