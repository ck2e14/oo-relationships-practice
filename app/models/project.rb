class Project

    attr_accessor :name, :pledge_goal
    attr_reader :user
    
    @@all = []
    
    def initialize(user, name, pledge_goal)
        @user = user
        @name = name
        @pledge_goal = pledge_goal
        @@all << self
    end
    
    def self.all
        @@all
     end


     def pledges
        Pledge.all.select {|pledge| pledge.project == self}
     end

     def pledge_amount 
        pledges.sum {|pledge| pledge.amount}
     end
     
     def pledge_count
        pledges.length
     end

     def self.no_pledges
        @@all.select {|project| project.pledge_count == 0}
     end

     def self.above_goal
        @@all.select {|project| project.pledge_goal < project.pledge_amount}
     end

     def self.most_backers
        @@all.max_by {|project| project.pledge_count}
     end

end
