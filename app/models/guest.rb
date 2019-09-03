class Guest
#A guest has many trips
#Has many listings through trips

attr_accessor :name
attr_reader :trip, :listing

@@all = []

def initialize(name)
    @name = name 
    @@all << self 
end

def self.all
    @@all
end

def trips
    Trip.all.select {|trip| trip.guest == self}
end
#returns an array of all the trips that have a .guest association to self, i.e. all the trips a given guest has taken

def listings
    trips.map {|trip| trip.listing}
end
#takes the result of the above helper method and returns the listings a guest has stayed at


def trip_count
    trips.length
end
#takes the trips method and returns the number of trips (number of elements in the returned array).

def self.pro_traveller
    @@all.select {|guest| guest.trip_count > 1}
end

def self.find_all_by_name(name)
    @@all.select {|guest| guest.name == name}
end

end
