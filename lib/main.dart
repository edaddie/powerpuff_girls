import 'powerPuff_girls.dart';
import 'blossom.dart';

void main() {
  // Demonstrate base class PowerPuffGirls
  print('=== Base Class Demonstration ===');
  var baseGirl = PowerPuffGirls(name: 'BaseGirl');
  print('Initial: ${baseGirl.info()}');
  baseGirl.boostFlightPower(20.0);
  print('After boosting flight: ${baseGirl.info()}');
  baseGirl.boostAttackPower(15.0);
  print('After boosting attack: ${baseGirl.info()}');

  // Demonstrate encapsulation: trying to access private field (would fail if not encapsulated)
  // print(baseGirl._flightPower); // This would cause an error, showing encapsulation

  // Demonstrate setter validation
  try {
    baseGirl.flightPower = -10.0;
  } catch (e) {
    print('Setter validation: $e');
  }

  // Demonstrate derived class Blossom
  print('\n=== Derived Class Demonstration ===');
  var blossom = Blossom();
  print('Initial: ${blossom.info()}');
  blossom.boostSpeed(25.0);
  print('After boosting speed: ${blossom.info()}');
  blossom.useIceblast();
  print('After using unique skill: ${blossom.info()}');

  // Demonstrate inheritance: Blossom can use base class methods
  blossom.boostFlightPower(30.0);
  print('Blossom after inheriting boost: ${blossom.info()}');
}
