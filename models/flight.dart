import 'passenger.dart';
import 'plane.dart';

class Flight {
  int flight_number;
  String destination;
  String origin;
  DateTime departure_time;
  DateTime arrival_time;
  Plane plane;
  List<Passenger> list_of_passengers = [];

  Flight({
    required this.flight_number,
    required this.arrival_time,
    required this.departure_time,
    required this.destination,
    required this.list_of_passengers,
    required this.origin,
    required this.plane,
  });

  void checkAvailability(Passenger newPassenger) {
    if (list_of_passengers.length < plane.capacity) {
      list_of_passengers.add(newPassenger);
      print('Passenger ${newPassenger.name} added to the flight');
    } else {
      print("Sorry, this flight is full.");
    }
  }

  void displayInfoFlight() {
    print('Flight Information:');
    print('---------------------');
    print('Flight Number  : $flight_number');
    print('Origin         : $origin');
    print('Destination    : $destination');
    print('Departure Time : $departure_time');
    print('Arrival Time   : $arrival_time');
    print('Plane          : $plane');
    print('Passengers     :');

    for (var pass in list_of_passengers) {
      print('  - ${pass.name} ${pass.passportNumber}');
    }

    print('---------------------\n');
  }

  @override
  String toString() {
    final passengerDetails = list_of_passengers
        .map((pass) => '  - ${pass.name} ${pass.passportNumber}')
        .join('\n');

    return '''
Flight Information:
---------------------
Flight Number  : $flight_number
Origin         : $origin
Destination    : $destination
Departure Time : $departure_time
Arrival Time   : $arrival_time
Plane          : $plane
Passengers     :
$passengerDetails
---------------------

''';
  }
}
