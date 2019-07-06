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

purple_flight = Flight.new("purple")
blue_flight = Flight.new("blue")
red_flight = Flight.new("red")
orange_flight = Flight.new("orange")

ticket_one = Ticket.new(1, blue_flight, passenger_one, "Phuket")
ticket_two = Ticket.new(2, red_flight, passenger_two, "Cancun")
ticket_three = Ticket.new(3, purple_flight, passenger_three, "San Diego")
ticket_four = Ticket.new(4, orange_flight, passenger_four, "Barcelona")
ticket_five = Ticket.new(5, blue_flight, passenger_five, "San Diego")
ticket_six = Ticket.new(6, red_flight, passenger_six, "Paris")





# p ticket_names
# p passengers

# p ticket_one.destination
# p ticket_two.passenger
# p ticket_three.ticket_number
# p ticket_four.flight_code

# p orange_flight.name

p Passenger.ticket_names