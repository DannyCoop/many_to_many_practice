class Tourist
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end


    def self.find_by_name(name)
        self.all.find {|tourist| tourist.name == name}
    end

    def trips
        Trip.all.select do |trip| 
            self == trip.tourist
        end
    end

    def landmarks
        self.trips.map {|trip| trip.landmark}
    end

    def visit_landmark(landmark)
        Trip.new(landmark, self)
    end

    def never_visited
        Landmark.all - self.landmarks
    end

end