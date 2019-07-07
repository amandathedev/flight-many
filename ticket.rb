# Ticket.all returns all of the tickets
# Ticket#passenger returns the passenger object for that given ticket. Once a ticket is created, I should not be able to change the passenger.
# Ticket#flight returns the flight object for that given ticket. Once a ticket is created, I should not be able to change the flight.
# Ticket#destination returns the destination name for a ticket. Once a ticket is created, I should not be able to change it.
# Ticket#number returns the ticket number for a ticket. This should be an integer from 1-25

# Join table

class Ticket

    # !
    attr_reader :passenger, :flight, :ticket_number, :destination

    @@all = []

    # Consistent
    def initialize(passenger, flight, ticket_number)
        @passenger = passenger
        @flight = flight
        @ticket_number = ticket_number
        # @destination = destination
        @@all << self
    end

    def self.all
        @@all
    end

    def t_number
        Ticket.all.map do |ticket|
            ticket.ticket_number
        end
    end

    def number
        if t_number > 25
            t_number = 25
        elsif t_number < 1
            t_number = 1
        else
            t_number
        end
    end

end