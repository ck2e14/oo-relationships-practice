class Trip
#Belongs to guest
#Belongs to listing

attr_accessor :guest
attr_reader :listing

@@all = []

def initialize(listing, guest)
    @listing = listing
    @guest = guest
    @@all << self 
end

def self.all 
    @@all
end

end
