class Passenger {
  String name;
  int age;
  String passportNumber;

  Passenger({required this.name,required this.age,required this.passportNumber});

  void displayInfo() {
    print('Passenger Name: $name');
    print('Age: $age');
    print('Passport Number: $passportNumber');
  }

  @override
  String toString() {
    return '$name, Age: $age, Passport: $passportNumber';
  }
}
