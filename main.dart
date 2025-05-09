import 'models/flight.dart';
import 'models/passenger.dart';
import 'models/plane.dart';
import 'models/flight_ticket.dart';
import 'system/airport_system.dart';

void main() {
  var airportSystem = AirportSystem();

  // Planes
  var plane1 = Plane(model: "aaa", capacity: 2, airline: "Queen");
  var plane2 = Plane(model: "bbb", capacity: 2, airline: "SkyFly");
  var plane3 = Plane(model: "ccc", capacity: 2, airline: "EagleAir");

  // Flights
  var flight1 = Flight(
    flight_number: 101,
    departure_time: DateTime(2025, 5, 20, 10, 30),
    arrival_time: DateTime(2025, 5, 20, 12, 30),
    destination: "New York",
    origin: "London",
    plane: plane1,
    list_of_passengers: [],
  );

  var flight2 = Flight(
    flight_number: 102,
    departure_time: DateTime(2025, 6, 15, 8, 0),
    arrival_time: DateTime(2025, 6, 15, 10, 30),
    destination: "Paris",
    origin: "Berlin",
    plane: plane2,
    list_of_passengers: [],
  );

  var flight3 = Flight(
    flight_number: 103,
    departure_time: DateTime(2025, 7, 1, 14, 15),
    arrival_time: DateTime(2025, 7, 1, 18, 0),
    destination: "Tokyo",
    origin: "Sydney",
    plane: plane3,
    list_of_passengers: [],
  );

  airportSystem.addFlight(flight1);
  airportSystem.addFlight(flight2);
  airportSystem.addFlight(flight3);

 //  Passengers
 var passenger1 = Passenger(name: "Ahmad", age: 19, passportNumber: "0101");
  var passenger2 = Passenger(name: "Fatima", age: 25, passportNumber: "0202");
  var passenger3 = Passenger(name: "John", age: 30, passportNumber: "0303");
var passenger4 = Passenger(name: "Sara", age: 28, passportNumber: "0404");
var passenger5 = Passenger(name: "Mike", age: 35, passportNumber: "0505");
var passenger6 = Passenger(name: "Linda", age: 22, passportNumber: "0606");
var passenger7 = Passenger(name: "Ali", age: 41, passportNumber: "0707");
var passenger8 = Passenger(name: "Emily", age: 31, passportNumber: "0808");
var passenger9 = Passenger(name: "David", age: 45, passportNumber: "0909");
var passenger10 = Passenger(name: "Noor", age: 29, passportNumber: "1010");

//  Tickets

var ticket1 = FlightTicket(
    ticketID: 1,
    price: 50,
    extra_luggage: 2,
    bookingType: BookingType.FirstClass,
    flight: flight1,
    passenger: passenger1,
  );

  var ticket2 = FlightTicket(
    ticketID: 2,
    price: 30,
    extra_luggage: 1,
    bookingType: BookingType.Economy,
    flight: flight2,
    passenger: passenger2,
  );

  var ticket3 = FlightTicket(
    ticketID: 3,
    price: 40,
    extra_luggage: 3,
    bookingType: BookingType.VIP,
    flight: flight3,
    passenger: passenger3,
  );

var ticket4 = FlightTicket(
  ticketID: 4,
  price: 35,
  extra_luggage: 0,
  bookingType: BookingType.Economy,
  flight: flight1,
  passenger: passenger4,
);

var ticket5 = FlightTicket(
  ticketID: 5,
  price: 55,
  extra_luggage: 2,
  bookingType: BookingType.FirstClass,
  flight: flight1,
  passenger: passenger5,
);

var ticket6 = FlightTicket(
  ticketID: 6,
  price: 45,
  extra_luggage: 1,
  bookingType: BookingType.Economy,
  flight: flight2,
  passenger: passenger6,
);

var ticket7 = FlightTicket(
  ticketID: 7,
  price: 70,
  extra_luggage: 3,
  bookingType: BookingType.VIP,
  flight: flight2,
  passenger: passenger7,
);

var ticket8 = FlightTicket(
  ticketID: 8,
  price: 50,
  extra_luggage: 2,
  bookingType: BookingType.FirstClass,
  flight: flight3,
  passenger: passenger8,
);

var ticket9 = FlightTicket(
  ticketID: 9,
  price: 60,
  extra_luggage: 0,
  bookingType: BookingType.VIP,
  flight: flight3,
  passenger: passenger9,
);

var ticket10 = FlightTicket(
  ticketID: 10,
  price: 30,
  extra_luggage: 1,
  bookingType: BookingType.Economy,
  flight: flight3,
  passenger: passenger10,
);

// Adjust ticket prices
List<FlightTicket> tickets = [ticket1,ticket2,ticket3,
  ticket4, ticket5, ticket6, ticket7, ticket8, ticket9, ticket10
];
for (var ticket in tickets) {
  ticket.typeOfBooking(ticket.bookingType);
}

// Add passengers to flights
airportSystem.addPassengerToFlight(passenger1, 101);
  airportSystem.addPassengerToFlight(passenger2, 102);
  airportSystem.addPassengerToFlight(passenger3, 103);
airportSystem.addPassengerToFlight(passenger4, 101);
airportSystem.addPassengerToFlight(passenger5, 101);
airportSystem.addPassengerToFlight(passenger6, 102);
airportSystem.addPassengerToFlight(passenger7, 102);
airportSystem.addPassengerToFlight(passenger8, 103);
airportSystem.addPassengerToFlight(passenger9, 103);
airportSystem.addPassengerToFlight(passenger10, 103);

// Display ticket

  print(ticket6);


airportSystem.displayAllFlights();

}
