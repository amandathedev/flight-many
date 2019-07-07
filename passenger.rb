# Passenger.all should return all of the passengers
# add_passenger(name, destination, ticket_number), creates a new passenger and associates it with that flight and ticket
# num_flights returns the total number of flights a passenger has flown
# destinations returns a unique array of all destinations a passenger has visited
# Passenger.find_by_name given a string of a full name, returns the first customer whose full name matches
# Passenger.all_names should return an array of all the customer names


class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_passenger(name, flight, ticket_number)
        Passenger.new(name, flight, ticket_number)
    end

    def num_flights
        self.all.map do |name|
            name.count
        end
    end

    # Broken
    def destinations
        x = Passenger.all.map do |passenger|
            passenger.destination
        end
        x.uniq
    end

    def self.find_by_name(name)
        Passenger.all.select do |passenger|
            passenger.name == self
        end
    end

    # √
    def self.all_names
        Passenger.all.map do |passenger|
            passenger.name
        end
    end

end