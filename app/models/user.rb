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

    def self.multi_pledger
        @@all.select {|user|user.count_pledge > 1}
    end

    def projects
        Project.all.select {|proj| proj.user == self}
    end

    def self.project_creator
        @@all.select {|user| user.projects.length > 0}
    end


end
