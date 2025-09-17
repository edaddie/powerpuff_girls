class PowerPuffGirls {
  final String name;
  double _flightPower;
  double _attackPower;
  double _speed;

  PowerPuffGirls({
    required this.name,
    double flightPower = 100,
    double attackPower = 50,
    double speed = 75,
  })  : _flightPower = flightPower,
        _attackPower = attackPower,
        _speed = speed;

  double get flightPower => _flightPower;
  set flightPower(double value) {
    if (value < 0) throw ArgumentError('Flight power must be above zero.');
    _flightPower = value;
  }

  double get attackPower => _attackPower;
  set attackPower(double value) {
    if (value < 0) throw ArgumentError('Attack power must be above zero.');
    _attackPower = value;
  }

  double get speed => _speed;
  set speed(double value) {
    if (value < 0) throw ArgumentError('Hero must recharge.');
    _speed = value;
  }
  
  void boostFlightPower(double amount) {
    if (amount <= 0) {
      print('Boost failed: energy too low');
      return;
    }
    _flightPower += amount;
    print('Boosted flight power: ${amount.toStringAsFixed(2)} -> New flight power: ${_flightPower.toStringAsFixed(2)}');
  }
  
  void boostAttackPower(double amount) {
    if (amount <= 0) {
      print('Boost failed: physical energy is too low.');
      return;
    }
    _attackPower += amount;
    print('Boosted attack power: ${amount.toStringAsFixed(2)} -> New attack power: ${_attackPower.toStringAsFixed(2)}');
  }
 
  void boostSpeed(double amount) {
    if (amount <= 0) {
      print('Boost failed: Hero must rest.');
      return;
    }
    _speed += amount;
    print('Boosted speed: ${amount.toStringAsFixed(2)} -> New speed: ${_speed.toStringAsFixed(2)}');
  }

  String info() => 'Character: $name — Flight Power: ${_flightPower.toStringAsFixed(2)}, Attack Power: ${_attackPower.toStringAsFixed(2)}, Speed: ${_speed.toStringAsFixed(2)}';
}
