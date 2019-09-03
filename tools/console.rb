require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#listing -< Trip >- Guest


l1 = Listing.new("San Francisco")
l2 = Listing.new("London")
l3 = Listing.new("Paris")
l4 = Listing.new("Brighton")
l5 = Listing.new("London")

g1 = Guest.new("Chris")
g2 = Guest.new("Alex")
g3 = Guest.new("Tess")
g4 = Guest.new("Tess")

t1 = Trip.new(l1, g2)
t2 = Trip.new(l2, g3)
t3 = Trip.new(l3, g1)
t4 = Trip.new(l1, g1)
t5 = Trip.new(l2, g1)
t6 = Trip.new(l4, g1)









binding.pry
0