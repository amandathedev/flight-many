class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def self.ticket_names
        Ticket.all.map do |ticket|
            ticket.passenger
        end
    end
    
    



end