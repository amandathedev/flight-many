require_relative 'flight'
require_relative 'ticket'
require_relative 'passenger'
require 'pry'


passenger_one = Passenger.new("John Stamos")
passenger_two = Passenger.new("Olive Treutler")
passenger_three = Passenger.new("Nora Maroney")
passenger_four = Passenger.new("Penny Treutler")
passenger_five = Passenger.new("Sloane Maroney")
passenger_six = Passenger.new("Tanner Maroney")
passenger_seven = Passenger.new("Kathleen Loftus")
passenger_eight = Passenger.new("Donald Treutler")

ticket_one = Ticket.new(passenger_one, "Phuket", 4)
ticket_two = Ticket.new(passenger_two, "Cancun", 6)
ticket_three = Ticket.new(passenger_three, "San Diego", 8)
ticket_four = Ticket.new(passenger_four, "Barcelona", 10)
ticket_five = Ticket.new(passenger_three, "San Diego", 12)
ticket_six = Ticket.new(passenger_six, "Paris", 14)
ticket_seven = Ticket.new(passenger_seven, "Budapest", 16)
ticket_eight = Ticket.new(passenger_eight, "Paris", 18)
ticket_nine = Ticket.new(passenger_five, "Zagreb", 20)
ticket_ten = Ticket.new(passenger_six, "Prishtina", 22)
ticket_eleven = Ticket.new(passenger_two, "Paris", 24)
ticket_twelve = Ticket.new(passenger_five, "Belgrade", 17)
ticket_thirteen = Ticket.new(passenger_six, "Sofia", 15)
ticket_fourteen = Ticket.new(passenger_three, "Skopje", 19)
ticket_fifteen = Ticket.new(passenger_four, "Budapest", 21)

# most_popular_destination should return Paris
# frequent_flyer should return Nora

p Passenger.find_by_name("Olive Treutler")
p Flight.find_by_destination("Paris")
p Passenger.all_names
p Flight.all_destinations