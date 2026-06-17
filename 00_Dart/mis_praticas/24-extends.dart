//* Ejercicio: Todos los vehículos deben poder transportar personas, 
//* pero cada tipo de vehículo tiene una forma diferente 
//* de consumir combustible 

void main() {
  Vehicle car = Car(initialFuel: 50);
  Vehicle electricCar = ElectricCar(initialEnergy: 100);
  Vehicle bicycle = Bicycle();

  travel(car, 100); // Consume 10 unidades de combustible
  travel(electricCar, 100); // Consume 10 unidades de energía
  travel(bicycle, 100); // No consume nada

  // print('Car remaining fuel: ${car.fuel}');
  // print('Electric Car remaining energy: ${electricCar.fuel}');
  // print('Bicycle remaining fuel: ${bicycle.fuel}');
}

// !Principio de inversión de dependencias (DIP)
void travel(Vehicle vehicle, double distance){
  double fuelNeeded = distance / 10; // 10 km per liter

  if (vehicle.fuel < fuelNeeded && vehicle is! Bicycle) {
    throw Exception('Not enough fuel/energy for the trip!');
  }

  vehicle.consumeFuel(fuelNeeded);
}

// ABSTRACT CLASS
abstract class Vehicle {
  double fuel;

  Vehicle({required this.fuel});

  void consumeFuel(double amount);
}

// EXTENDS
class Car extends Vehicle {
  Car({required double initialFuel})
    : super(fuel: initialFuel);

  @override
  void consumeFuel(double amount) {
    fuel -= amount;
    print('Car consumed $amount liters of fuel. Remaining fuel: $fuel');
  }
}

class ElectricCar extends Vehicle {
  ElectricCar({required double initialEnergy})
    : super(fuel: initialEnergy);

  @override
  void consumeFuel(double amount) {
    fuel -= amount;
    print('Electric Car consumed $amount kWh. Remaining: $fuel');
  }
}

class Bicycle extends Vehicle {
  Bicycle() : super(fuel: 0);

  @override
  void consumeFuel(double amount) {
    print('Bicycles do not consume fuel!');
  }
}