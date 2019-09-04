class User

    attr_accessor :name, :project, :pledge
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def create_project(name, pledge_goal)
        Project.new(self, name, pledge_goal)
    end

    def self.highest_pledge
        person = Pledge.all.max_by {|pledge| pledge.amount} 
        person.user
    end
    #this class methods creates a variable, person, which is assigned to the pledge object in the pledge @@all array
    #that has the highest .amount association
    #next you are calling on the .user association of that variable

    def count_pledge
        Pledge.all.count {|pledge| pledge.user == self}
    end
    # calls .count on every pledge in the array that has a .user association to self, i.e. the instance
    # that the method is called on. 

    def self.multi_pledger
        @@all.select {|user|user.count_pledge > 1}
    end
    # this method selects all users who have a count_pledge greater than one, i.e. it invokes the earlier defined
    # count_pledge method, which returns all pledges that have a user association. So what this method does is to
    # iterate over all users, (@@all) and 

    def projects
        Project.all.select {|proj| proj.user == self}
    end
    #this method is returning all projects that were created by the user the method is called on

    def self.project_creator
        @@all.select {|user| user.projects.length > 0}
    end
    #invokes projects method - it calls it on all users in @@all array - and returns users who have more than 0 project creations. 
    #this one iterates over the User class's @@all array and returns a new array with the users 


end
