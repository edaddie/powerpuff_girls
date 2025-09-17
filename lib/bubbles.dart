import 'powerPuff_girls.dart';

class Bubbles extends PowerPuffGirls {
  final String _uniqueSkill = "laser vision";
  final double _celsius = 1500; 

  String get uniqueSkill => _uniqueSkill;
  double get celsius => _celsius;

   Bubbles() : super(name: "BUBBLES");

  void useLaserVision() {
    print('Bubbles uses $_uniqueSkill: cut through metal, blast apart large robots, and destroy buildings for $_celsius °C or Degrees Celsius');
  }

  @override
  String info() => '${super.info()} - Unique Skill: $_uniqueSkill (Celsius: $_celsius)';
}
