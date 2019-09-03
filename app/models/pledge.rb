class Pledge
    attr_accessor :amount, :user, :project
    @@all = []
    def initialize(user, project, amount)
        @amount = amount
        @user = user
        @project = project
        @@all << self
    end
    def self.all
        @@all
    end
 end
