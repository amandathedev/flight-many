class Flight

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all << self
    end

    # Returns a list of passengers who are on this flight
    def passengers
        Ticket.all.select do |passenger|
            passenger.flight_code == self
        end
    end






end

