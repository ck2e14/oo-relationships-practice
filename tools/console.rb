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

##############seed data under here is for Crowdfunding###############
#USERS
#PROJECTS
#PLEDGES

#USERS >-< PROJECTS
#USER -< PLEDGE >- PROJECTS
# users can create projects, but also contribute to projects(via pledge)

#seeds

u1 = User.new("Chris")
u2 = User.new("Calvin")
u3 = User.new("Alice")
u4 = User.new("Fradgely")
u5 = User.new("Kate")
u6 = User.new("Jack")

pr1 = Project.new(u1, "Craft_lager", 10000)
pr2 = Project.new(u3, "Betting_tips", 5000)
pr3 = Project.new(u2, "Electric_vehicles", 12000)
pr4 = Project.new(u5, "Retro_games", 20000)

pl1 = Pledge.new(u1, pr2, 500)
pl2 = Pledge.new(u3, pr2, 250)
pl3 = Pledge.new(u6, pr1, 200)
pl4 = Pledge.new(u6, pr3, 50)
pl5 = Pledge.new(u2, pr3, 75000000000)
pl6 = Pledge.new(u2, pr2, 200)






binding.pry
0