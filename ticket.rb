# Join table

class Ticket

    attr_reader :ticket_number, :flight_code, :passenger, :destination

    @@all = []

    def initialize(ticket_number, flight_color, passenger, destination)
        @ticket_number = ticket_number
        @flight_code = flight_code
        @passenger = passenger
        @destination = destination
        @@all << self
    end

    def self.all
        @@all
    end

    

end

p Ticket.all