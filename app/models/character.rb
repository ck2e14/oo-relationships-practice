class Character

    @@all = []

    def initialize(char_name)
        @char_name = char_name
        @@all << self 
    end


end
