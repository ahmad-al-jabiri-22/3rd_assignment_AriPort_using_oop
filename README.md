# ✈️ Airport Management System (Dart/Flutter)

This project demonstrates a simple airport management system built in Dart. It includes features for managing flights, planes, passengers, and flight tickets using object-oriented programming (OOP) principles.

---

## 📄 Overview

The `main.dart` file acts as the entry point of the application. It sets up the system by initializing planes, flights, passengers, and their corresponding flight tickets. This system simulates flight booking and management within a simplified airport environment.

---

## 🚀 Main Function Responsibilities

The `main()` function performs the following:

- Creates an instance of `AirportSystem`.
- Initializes several `Plane` objects.
- Creates multiple `Flight` objects and links them with planes.
- Creates `Passenger` objects with names and IDs.
- Generates `FlightTicket` objects tied to both passengers and flights.
- Adjusts ticket prices based on booking type.
- Adds passengers to flights.
- Displays ticket information and all available flights.

---

## 🛩️ Airport System

The `AirportSystem` class is the core of this program, managing:

- Flights (via `addFlight`)
- Passengers (via `addPassengerToFlight`)

It acts as a hub that connects all system components.

---

## ✈️ Planes

Three `Plane` instances are defined with their respective attributes:

| Plane | Model | Capacity | Airline   |
|-------|-------|----------|-----------|
| 1     | aaa   | 2        | Queen     |
| 2     | bbb   | 2        | SkyFly    |
| 3     | ccc   | 2        | EagleAir  |

These planes are assigned to flights for simulation.

---

## 🛫 Flights

Three `Flight` instances are initialized:

- **Flight 101**: From London to New York
- **Flight 102**: From Berlin to Paris
- **Flight 103**: From Sydney to Tokyo

Each flight is linked to a specific `Plane` instance and includes departure and arrival times.

---

## 🧍‍♂️ Passengers

Ten `Passenger` instances are created, including:

- `passenger1` - Name: Ahmad, Age: 19, Passport Number: 0101
- `passenger2` - Name: Fatima, Age: 25, Passport Number: 0202
- *(Others follow a similar format)*

---

## 🎟️ Flight Tickets

Each `FlightTicket` object links a `Passenger` to a `Flight`. Example:

```dart
var ticket1 = FlightTicket(
  ticketID: 1,
  price: 50,
  extra_luggage: 2,
  bookingType: BookingType.FirstClass,
  flight: flight1,
  passenger: passenger1,
);
