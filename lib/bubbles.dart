// Derived class: Bubbles
// Extends Powerpuff Girls with unique skill "laser vision"

import 'powerPuff_girls.dart';

class Bubbles extends PowePuffGirls {
  // Private encapsulated fields
  final String _uniqueSkill = "laser vision";
  final double _celsius = 1500; // degree celsius

  // Getter for encapsulated fields (read-only from outside)
  String get uniqueSkill => _uniqueSkill;
  double get celsius => _celsius;

  // Constructor
   Bubbles() : super(name: "Bubbles");

  // Unique method to use unique skill
  void useLaserVision() {
    print('Bubbles uses $_uniqueSkill: cut through metal, blast apart large robots, and destroy buildings for $_celsius °C or Degrees Celsius');
  }

  @override
  String info() => '${super.info()} - Unique Skill: $_uniqueSkill (Celsius: $_celsius)';
}
