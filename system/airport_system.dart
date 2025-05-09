import '../models/flight.dart';
import '../models/passenger.dart';

class AirportSystem {
  List<Flight> _flights = [];

  void addFlight(Flight flight) {
    _flights.add(flight);
  }

  void displayAllFlights() {
    for (var f in _flights) {
      print(f);
    }
  }

  void addPassengerToFlight(Passenger newPassenger, int flight_number) {
    for (var f in _flights) {
      if (flight_number == f.flight_number) {
        f.checkAvailability(newPassenger);
        return;
      }
    }
    print("Flight not found");
  }
}
