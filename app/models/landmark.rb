class Landmark
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        self.class.all << self
    end

    def self.all
        return @@all
    end

    def self.find_by_city(city)
        self.all.select {|landmark| landmark.city == city}
    end

    def trips
        Trip.all.select {|trip| trip.landmark == self}
    end

    def tourists
        self.trips.map {|trip| trip.tourist}
    end

end