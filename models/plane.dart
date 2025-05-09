class Plane {
  String model;
  int capacity;
  String airline;

  Plane({required this.model, required this.capacity, required this.airline});

  void displayInfo() {
    print('Airplane Model: $model');
    print('Airline: $airline');
    print('Capacity: $capacity');
  }

  @override
  String toString() {
    return 'Airplane Model: $model\nAirline: $airline\nCapacity: $capacity';
  }
}
