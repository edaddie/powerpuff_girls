// lib/powerPuff_girls.dart
// Base class: PowerPuffGirls
// - Encapsulation: _flightPower, _attackPower, _speed are private
// - Provides getters for flightPower, attackPower, speed and getter+setter for other properties with validation
// - Provides at least 2 methods: boostFlightPower() and boostAttackPower()

class PowerPuffGirls {
  final String name;
  // Private fields — encapsulated (can't be accessed from other files)
  double _flightPower;
  double _attackPower;
  double _speed;
  // Constructor with named parameters
  PowerPuffGirls({
    required this.name,
    double flightPower = 100,
    double attackPower = 50,
    double speed = 75,
  })  : _flightPower = flightPower,
        _attackPower = attackPower,
        _speed = speed;
  // Getter and setter for flightPower
  double get flightPower => _flightPower;
  set flightPower(double value) {
    if (value < 0) throw ArgumentError('Flight power must be non-negative.');
    _flightPower = value;
  }
  // Getter and setter for attackPower
  double get attackPower => _attackPower;
  set attackPower(double value) {
    if (value < 0) throw ArgumentError('Attack power must be non-negative.');
    _attackPower = value;
  }
  // Getter and setter for speed
  double get speed => _speed;
  set speed(double value) {
    if (value < 0) throw ArgumentError('Hero must recharge.');
    _speed = value;
  }
  // Method 1: boost flight power (must be positive)
  void boostFlightPower(double amount) {
    if (amount <= 0) {
      print('Boost failed: energy too low');
      return;
    }
    _flightPower += amount;
    print('Boosted flight power: ${amount.toStringAsFixed(2)} -> New flight power: ${_flightPower.toStringAsFixed(2)}');
  }
  // Method 2: boost attack power (must be positive)
  void boostAttackPower(double amount) {
    if (amount <= 0) {
      print('Boost failed: physical energy is too low.');
      return;
    }
    _attackPower += amount;
    print('Boosted attack power: ${amount.toStringAsFixed(2)} -> New attack power: ${_attackPower.toStringAsFixed(2)}');
  }
  // Additional method: boost speed
  void boostSpeed(double amount) {
    if (amount <= 0) {
      print('Boost failed: Hero must rest.');
      return;
    }
    _speed += amount;
    print('Boosted speed: ${amount.toStringAsFixed(2)} -> New speed: ${_speed.toStringAsFixed(2)}');
  }
  // Optional helper method: formatted info
  String info() => 'Powerpuff Girl: $name — Flight Power: ${_flightPower.toStringAsFixed(2)}, Attack Power: ${_attackPower.toStringAsFixed(2)}, Speed: ${_speed.toStringAsFixed(2)}';
}
