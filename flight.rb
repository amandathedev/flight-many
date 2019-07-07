# Flight.all returns an array of all flights
# passengers returns a unique list of all passengers who have visited a particular destination
# tickets returns an array of all tickets for that flight
# most_popular_destination returns the destination that has been visited by the highest number of passengers
# frequent_flyer returns that name of the passenger who has flown the most flights
# Flight.all_destinations should return an array of all the destinations
# Flight.find_by_destination(destination) given a string of a destination name, returns the first destination that matches


class Flight

    attr_reader :destination

    @@all = []

    def initialize(destination)
        @destination = destination
        @@all << self
    end

    def self.all
        @@all
    end

    def passengers
        x = self.all.select do |passenger|
            passenger.name == self
        end
        x.uniq
    end

    def tickets
        self.all.map do |ticket|
            ticket.ticket_number
        end
    end

    def most_popular_destination
        y = self.all.map do |flight|
            flight.destination
        end
        y.sort.last
    end

    def frequent_flyer
        z = self.all.map do |ticket|
            ticket.passenger
        end
        z.sort.last
    end

    def self.all_destinations
        Flight.all.map do |flight|
            flight.destination
        end
    end

    def self.find_by_destination(destination)
        self.all.select do |flight|
            flight.destination == self
        end
    end

end
