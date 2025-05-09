import 'flight.dart';
import 'passenger.dart';


enum BookingType
{
    Economy,   
    FirstClass, 
    VIP       
} 

class FlightTicket {
  int ticketID;
  Passenger passenger; 
  Flight flight; 
  double price;
  int extra_luggage;
  BookingType bookingType;

  

  FlightTicket({
    required this.ticketID,
    required this.price,
    required this.extra_luggage,
    required this.bookingType,
    required this.flight,
    required this.passenger,
  });


  void typeOfBooking(BookingType bookingType) {
   
    if (bookingType == BookingType.Economy && extra_luggage >= 10) {

      price = price + 30;
    }
    if (bookingType == BookingType.FirstClass ) {
      price = price + 30;
    }
    if(bookingType == BookingType.VIP)
    {
      price = price+ 100;
    }
  }

void displayTicketInfo() {
  print('Ticket Information:');
  print('---------------------');
  print('Ticket ID       : $ticketID');
  print('Price           : \$${price}');
  print('Extra Luggage   : $extra_luggage');
  print('Booking Type    : ${bookingType.index}');
  print('Flight Info     : $flight');
  print('Passenger Info  : ${passenger.name}${passenger.passportNumber}');
  print('---------------------\n');
}

@override
String toString() {
  return '''
Ticket Information:
---------------------
Ticket ID       : $ticketID
Price           : \$${price.toStringAsFixed(2)}
Extra Luggage   : $extra_luggage
Booking Type    : ${bookingType.name}
Flight Info     : ${flight.plane.airline}
Passenger Info  : ${passenger.name}${passenger.passportNumber}
---------------------

''';
}

}
