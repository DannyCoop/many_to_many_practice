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
        Trip.all.select {|trip| self == trip.tourist}
    end

end