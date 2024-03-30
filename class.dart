// Interface
abstract class Vehicle {
  void start();
  void stop();
}

// Base class
class Car implements Vehicle {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  @override
  void start() {
    print('$year $make $model starts.');
  }

  @override
  void stop() {
    print('$year $make $model stops.');
  }

  void displayInfo() {
    print('Car: $year $make $model');
  }
}

// Derived class
class ElectricCar extends Car {
  ElectricCar(String make, String model, int year) : super(make, model, year);

  @override
  void start() {
    print('$year $make $model starts silently.');
  }
}

void main() {
  // Create an instance of ElectricCar
  ElectricCar myCar = ElectricCar('Tesla', 'Model S', 2023);
  myCar.start();
  myCar.stop();

  // Initialize instance from hardcoded data
  List<String> data = ['Ford', 'Mustang', '2022'];
  Car carFromData = Car(data[0], data[1], int.parse(data[2]));
  carFromData.displayInfo();

  // Method demonstrating the use of a loop
  for (int i = 0; i < 5; i++) {
    print('Loop iteration: $i');
  }
}
