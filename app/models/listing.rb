class Listing
#A listing has many trips
#Has many guests through trips

attr_accessor :city, :trip, :guest
attr_reader 

@@all = []

def initialize(city)
    @city = city
    @@all << self 
end

def self.all 
    @@all
end


def trips
    Trip.all.select {|trip| trip.listing == self}
end
#calls on the Trip @@all array, selects those that have a listing association == to self (whatever listing it is called on)


def guests
    trips.map {|trip| trip.guest}
end
#uses the earlier defined trips method and maps (transforms) to return an array of all the guests that have 
#stayed at a that listing (the listing the method is called on, e,g. l1.guests)


def trip_count 
    trips.length 
end
#uses the 'guests' helper method to return the number of trips taken to a specific listing


def self.find_all_by_city(city)
    @@all.select {|listing| listing.city == city}
end
#takes a city strings and will return an array of the listings that are attributed to that city 
#for example you could call 
#Listing.find_all_by_city("London") 

def self.most_popular 
    @@all.max_by {|listing| listing.trip_count}
end
#iterates over @@all array and finds the max_by value for the previously used trip_count method, which returns the number of trips at a speicifc listing
#becuse this method uses an enumerator, it will apply trip_count to each listing. 

end
